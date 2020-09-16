/*
* Tencent is pleased to support the open source community by making Puerts available.
* Copyright (C) 2020 THL A29 Limited, a Tencent company.  All rights reserved.
* Puerts is licensed under the BSD 3-Clause License, except for the third-party components listed in the file 'LICENSE' which may be subject to their corresponding license terms. 
* This file is subject to the terms and conditions defined in file 'LICENSE', which is part of this source code package.
*/

using UnityEngine;
using UnityEditor;
using System;
using System.Linq;
using System.Reflection;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace Puerts.Editor
{
    public class GeneratorHaxe
    {
        const BindingFlags Flags = BindingFlags.Public | BindingFlags.Instance | BindingFlags.Static | BindingFlags.DeclaredOnly;

        public static string GetGenName(Type type)
        {
            if (type.IsGenericType)
            {
                var argNames = type.GetGenericArguments().Select(x => GetGenName(x)).ToArray();
                return type.FullName.Split('`')[0] + "<" + string.Join(", ", argNames) + ">";
            }
            else
                return type.FullName;
        }

        static List<MethodInfo> filters;

        public class TypeGenInfo
        {
            public string Name;
            public string Namespace;
            public string FullName;
            public MethodGenInfo[] Methods;
            public bool IsValueType;
            public MethodGenInfo Constructor;
            public PropertyGenInfo[] Properties;
            public IndexGenInfo[] GetIndexs;
            public IndexGenInfo[] SetIndexs;
            public MethodGenInfo[] Operators;
            public EventGenInfo[] Events;
            public bool BlittableCopy;
            public string BaseType;
        }

        public class DataTypeInfo
        {
            public string TypeName;
            public bool IsEnum;
            public string UnderlyingTypeName;
        }

        public class ParameterGenInfo : DataTypeInfo
        {
            public string Name;
            public bool IsOut;
            public bool IsByRef;
            public string ExpectJsType;
            public string ExpectCsType;
            public bool IsParams;
        }

        public class PropertyGenInfo : DataTypeInfo
        {
            public string Name;
            public bool IsStatic;
            public bool HasGetter;
            public bool HasSetter;
        }

        public class IndexGenInfo : DataTypeInfo
        {
            public ParameterGenInfo IndexParameter;
            public bool HasGetter;
            public bool HasSetter;
        }

        public class EventGenInfo : DataTypeInfo
        {
            public string Name;
            public bool IsStatic;
            public bool HasAdd;
            public bool HasRemove;
        }

        public class OverloadGenInfo : DataTypeInfo
        {
            public ParameterGenInfo[] ParameterInfos;
            public bool IsVoid;
            public bool HasParams;
        }

        public class MethodGenInfo
        {
            public string Name;
            public bool IsStatic;
            public OverloadGenInfo[][] OverloadGroups;
            public bool HasOverloads;
            public int OverloadCount;
        }

        static string ToCode(JsValueType ExpectJsType)
        {
            return string.Join(" | ", ExpectJsType.ToString().Split(',').Select(s => "Puerts.JsValueType." + s.Trim()).ToArray());
        }

        static void FillEnumInfo(DataTypeInfo info, Type type)
        {
            if (type.IsEnum)
            {
                info.IsEnum = true;
                info.UnderlyingTypeName = GetHxTypeName(Enum.GetUnderlyingType(type));
            }
        }

        static ParameterGenInfo ToParameterGenInfo(ParameterInfo parameterInfo)
        {
            var ExpectJsType = GeneralGetterManager.GetJsTypeMask(parameterInfo.ParameterType);
            var result = new ParameterGenInfo()
            {
                Name = parameterInfo.Name,
                IsOut = !parameterInfo.IsIn && parameterInfo.IsOut && parameterInfo.ParameterType.IsByRef,
                IsByRef = parameterInfo.ParameterType.IsByRef,
                TypeName = GetHxTypeName((parameterInfo.ParameterType.IsByRef ? parameterInfo.ParameterType.GetElementType() : parameterInfo.ParameterType)),
                ExpectJsType = ToCode(ExpectJsType),
                IsParams = parameterInfo.IsDefined(typeof(ParamArrayAttribute), false),
            };
            if (result.IsParams)
            {
                result.TypeName = GetHxTypeName(parameterInfo.ParameterType.GetElementType());
            }
            result.ExpectCsType = ((ExpectJsType & JsValueType.NativeObject) == JsValueType.NativeObject) ? string.Format("typeof({0})", result.TypeName) : "null";
            FillEnumInfo(result, parameterInfo.ParameterType);
            return result;
        }

        static IndexGenInfo ToIndexGenInfo(PropertyInfo propertyInfo)
        {
            var getMethod = propertyInfo.GetGetMethod();
            var setMethod = propertyInfo.GetSetMethod();
            var result = new IndexGenInfo()
            {
                TypeName = GetHxTypeName(propertyInfo.PropertyType),
                IndexParameter = ToParameterGenInfo(propertyInfo.GetIndexParameters()[0]),
                HasGetter = getMethod != null && getMethod.IsPublic,
                HasSetter = setMethod != null && setMethod.IsPublic,
            };
            FillEnumInfo(result, propertyInfo.PropertyType);
            return result;
        }

        static PropertyGenInfo ToPropertyGenInfo(PropertyInfo propertyInfo)
        {
            var getMethod = propertyInfo.GetGetMethod();
            var setMethod = propertyInfo.GetSetMethod();
            bool isStatic = getMethod == null ? setMethod.IsStatic : getMethod.IsStatic;
            var result = new PropertyGenInfo()
            {
                Name = propertyInfo.Name,
                TypeName = GetHxTypeName(propertyInfo.PropertyType),
                IsStatic = isStatic,
                HasGetter = getMethod != null && getMethod.IsPublic,
                HasSetter = setMethod != null && setMethod.IsPublic,
            };
            FillEnumInfo(result, propertyInfo.PropertyType);
            return result;
        }

        static EventGenInfo ToEventGenInfo(EventInfo eventInfo)
        {
            var addMethod = eventInfo.GetAddMethod();
            var removeMethod = eventInfo.GetRemoveMethod();
            bool isStatic = addMethod == null ? removeMethod.IsStatic : addMethod.IsStatic;
            return new EventGenInfo()
            {
                Name = eventInfo.Name,
                TypeName = GetHxTypeName(eventInfo.EventHandlerType),
                IsStatic = isStatic,
                HasAdd = addMethod != null && addMethod.IsPublic,
                HasRemove = removeMethod != null && removeMethod.IsPublic,
            };
        }

        static PropertyGenInfo ToPropertyGenInfo(FieldInfo fieldInfo)
        {
            var result = new PropertyGenInfo()
            {
                Name = fieldInfo.Name,
                TypeName = GetHxTypeName(fieldInfo.FieldType),
                IsStatic = fieldInfo.IsStatic,
                HasGetter = true,
                HasSetter = !fieldInfo.IsInitOnly && !fieldInfo.IsLiteral,
            };
            FillEnumInfo(result, fieldInfo.FieldType);
            return result;
        }

        static MethodGenInfo ToMethodGenInfo(List<MethodBase> overloads)
        {
            var ret = new List<OverloadGenInfo>();
            foreach (var iBase in overloads)
            {
                ret.AddRange(ToOverloadGenInfo(iBase));
            }
            var result = new MethodGenInfo()
            {
                Name = overloads[0].Name,
                IsStatic = overloads[0].IsStatic,
                HasOverloads = ret.Count > 1,
                OverloadCount = ret.Count,
                OverloadGroups = ret.GroupBy(m => m.ParameterInfos.Length).Select(lst => lst.ToArray()).ToArray()
            };
            return result;
        }

        static object HasValue(ParameterInfo parameter)
        {
            if (!parameter.IsOptional)
                return null;
            return parameter.DefaultValue;
        }

        static List<OverloadGenInfo> ToOverloadGenInfo(MethodBase methodBase)
        {
            List<OverloadGenInfo> ret = new List<OverloadGenInfo>();
            OverloadGenInfo result = null;
            if (methodBase is MethodInfo)
            {
                var methodInfo = methodBase as MethodInfo;
                result = new OverloadGenInfo()
                {
                    ParameterInfos = methodInfo.GetParameters().Select(info => ToParameterGenInfo(info)).ToArray(),
                    TypeName = GetHxTypeName(methodInfo.ReturnType),
                    IsVoid = methodInfo.ReturnType == typeof(void)
                };
                FillEnumInfo(result, methodInfo.ReturnType);
                result.HasParams = result.ParameterInfos.Any(info => info.IsParams);
                ret.Add(result);
                var ps = methodInfo.GetParameters();
                for (int i = ps.Length - 1; i >= 0; i--)
                {
                    var value = HasValue(ps[i]);
                    if (value != null)
                    {
                        result = new OverloadGenInfo()
                        {
                            ParameterInfos = methodInfo.GetParameters().Select(info => ToParameterGenInfo(info)).Take(i).ToArray(),
                            TypeName = GetHxTypeName(methodInfo.ReturnType),
                            IsVoid = methodInfo.ReturnType == typeof(void)
                        };
                        FillEnumInfo(result, methodInfo.ReturnType);
                        result.HasParams = result.ParameterInfos.Any(info => info.IsParams);
                        ret.Add(result);
                    }
                    else
                    {
                        break;
                    }
                }
            }
            else if (methodBase is ConstructorInfo)
            {
                var constructorInfo = methodBase as ConstructorInfo;
                result = new OverloadGenInfo()
                {
                    ParameterInfos = constructorInfo.GetParameters().Select(info => ToParameterGenInfo(info)).ToArray(),
                    TypeName = GetHxTypeName(constructorInfo.DeclaringType),
                    IsVoid = false
                };
                result.HasParams = result.ParameterInfos.Any(info => info.IsParams);
                ret.Add(result);
                var ps = constructorInfo.GetParameters();
                for (int i = ps.Length - 1; i >= 0; i--)
                {
                    var value = HasValue(ps[i]);
                    if (value != null)
                    {
                        result = new OverloadGenInfo()
                        {
                            ParameterInfos = constructorInfo.GetParameters().Select(info => ToParameterGenInfo(info)).Take(i).ToArray(),
                            TypeName = GetHxTypeName(constructorInfo.DeclaringType),
                            IsVoid = false
                        };
                        result.HasParams = result.ParameterInfos.Any(info => info.IsParams);
                        ret.Add(result);
                    }
                    else
                    {
                        break;
                    }
                }
            }
            else
            {
                throw new NotSupportedException();
            }

            return ret;
        }

        static TypeGenInfo ToTypeGenInfo(Type type)
        {
            var methodGroups = type.GetMethods(Flags).Where(m => !isFiltered(m))
                .Where(m => !m.IsSpecialName && !m.IsGenericMethodDefinition)
                .GroupBy(m => new MethodKey { Name = m.Name, IsStatic = m.IsStatic })
                .Select(i => i.Cast<MethodBase>().ToList());
            var indexs = type.GetProperties(Flags).Where(m => !isFiltered(m))
                .Where(p => p.GetIndexParameters().GetLength(0) == 1).Select(p => ToIndexGenInfo(p)).ToArray();
            var operatorGroups = type.GetMethods(Flags)
                .Where(m => !isFiltered(m) && m.IsSpecialName && m.Name.StartsWith("op_") && m.IsStatic)
                .GroupBy(m => new MethodKey { Name = m.Name, IsStatic = m.IsStatic })
                .Select(i => i.Cast<MethodBase>().ToList());

            var constructors = type.GetConstructors(Flags).Where(m => !isFiltered(m)).Cast<MethodBase>().ToList();

            return new TypeGenInfo
            {
                Name = type.Name,
                Namespace = type.Namespace,
                FullName = GetHxTypeName(type),
                Methods = methodGroups.Select(m => ToMethodGenInfo(m)).ToArray(),
                IsValueType = type.IsValueType,
                Constructor = (!type.IsAbstract && constructors.Count > 0) ? ToMethodGenInfo(constructors) : null,
                Properties = type.GetProperties(Flags)
                    .Where(m => !isFiltered(m))
                    .Where(p => !p.IsSpecialName && p.GetIndexParameters().GetLength(0) == 0)
                    .Select(p => ToPropertyGenInfo(p)).Concat(
                        type.GetFields(Flags).Where(m => !isFiltered(m)).Select(f => ToPropertyGenInfo(f))).ToArray(),
                GetIndexs = indexs.Where(i => i.HasGetter).ToArray(),
                SetIndexs = indexs.Where(i => i.HasSetter).ToArray(),
                Operators = operatorGroups.Select(m => ToMethodGenInfo(m)).ToArray(),
                Events = type.GetEvents(Flags).Where(m => !isFiltered(m)).Select(e => ToEventGenInfo(e)).ToArray(),
                BaseType = type.BaseType != null?type.BaseType.FullName:""
            };
        }

        static string GetWrapTypeName(Type type)
        {
            return type.ToString().Replace("+", "_").Replace(".", "_").Replace("`", "_").Replace("&", "_").Replace("[", "_").Replace("]", "_").Replace(",", "_") + "_Wrap";
        }

        public class TsParameterGenInfo
        {
            public string Name;
            public bool IsByRef;
            public string TypeName;
            public bool IsParams;
            public bool IsOptional;

        }
        
        // #lizard forgives
        static string GetHxTypeName(Type type)
        {
            if (type == typeof(int))
                return "Int";
            if (type == typeof(uint))
                return "UInt";
            else if (type == typeof(short))
                return "Int";
            else if (type == typeof(byte))
                return "Int";
            else if (type == typeof(sbyte))
                return "Int";
            else if (type == typeof(ushort))
                return "UInt";
            else if (type == typeof(bool))
                return "Bool";
            else if (type == typeof(long))
                return "Int";
            else if (type == typeof(ulong))
                return "UInt";
            else if (type == typeof(float))
                return "Float";
            else if (type == typeof(double))
                return "Float";
            else if (type == typeof(string))
                return "String";
            else if (type == typeof(void))
                return "Void";
            else if (type == typeof(DateTime))
                return "Date";
            else if (type == typeof(Puerts.ArrayBuffer))
                return "ArrayBuffer";
            else if (type == typeof(object))
                return "Any";
            else if (type == typeof(Delegate))
                return "Function";
            else if (type.IsByRef)
                return "$Ref<" + GetHxTypeName(type.GetElementType()) + ">";
            else if (type.IsArray)
                return GetHxTypeName(type.GetElementType()) + "[]";
            else if (type.IsGenericType)
            {
                var fullName = type.FullName == null ? type.ToString() : type.FullName;
                var parts = fullName.Replace('+', '.').Split('`');
                var argTypenames = type.GetGenericArguments()
                    .Select(x => GetHxTypeName(x)).ToArray();
                return parts[0] + '$' + parts[1].Split('[')[0] + "<" + string.Join(", ", argTypenames) + ">";
            }
            else if (type.FullName == null)
                return type.ToString();
            else
                return type.FullName.Replace('+', '.');
        }

        

        public static bool IsGetterOrSetter(MethodInfo method)
        {
            return (method.IsSpecialName && method.Name.StartsWith("get_") && method.GetParameters().Length != 1)
                || (method.IsSpecialName && method.Name.StartsWith("set_") && method.GetParameters().Length != 2);
        }

        public static bool IsDelegate(Type type)
        {
            if (type == null)
            {
                return false;
            }
            else if (type == typeof(Delegate))
            {
                return true;
            }
            else
            {
                return IsDelegate(type.BaseType);
            }
        }

        static bool IsStatic(PropertyInfo propertyInfo)
        {
            var getMethod = propertyInfo.GetGetMethod();
            var setMethod = propertyInfo.GetSetMethod();
            return getMethod == null ? setMethod.IsStatic : getMethod.IsStatic;
        }

        static Type GetRawType(Type type)
        {
            if (type.IsByRef || type.IsArray)
            {
                return GetRawType(type.GetElementType());
            }
            if (type.IsGenericType) return type.GetGenericTypeDefinition();
            return type;
        }

        static bool isFiltered(MemberInfo mb)
        {
            if (mb == null) return false;
            ObsoleteAttribute oa = mb.GetCustomAttributes(typeof(ObsoleteAttribute), false).FirstOrDefault() as ObsoleteAttribute;
            if (oa != null/* && oa.IsError*/) //希望只过滤掉Error类别过时方法可以把oa.IsError加上
            {
                return true;
            }

            if (mb is FieldInfo && (mb as FieldInfo).FieldType.IsPointer) return true;
            if (mb is PropertyInfo && (mb as PropertyInfo).PropertyType.IsPointer) return true;
            if (mb is MethodInfo && (mb as MethodInfo).ReturnType.IsPointer) return true;

            if (filters != null && filters.Count > 0)
            {
                foreach (var filter in filters)
                {
                    if ((bool)filter.Invoke(null, new object[] { mb }))
                    {
                        return true;
                    }
                }
            }

            if (mb is MethodBase && (mb as MethodBase).GetParameters().Any(pInfo => pInfo.ParameterType.IsPointer)) return true;

            return false;
        }

       

        [MenuItem("puerts/Generate Haxe Code", false, 1)]
        public static void GenerateHXCode()
        {
            var start = DateTime.Now;
            var saveTo = Application.dataPath + "/csharp/";
            Directory.CreateDirectory(saveTo);
            GenerateHXCode(saveTo);
            Debug.Log("finished! use " + (DateTime.Now - start).TotalMilliseconds + " ms");
            AssetDatabase.Refresh();
        }

        public static void GenerateHXCode(string saveTo, bool tsOnly = false)
        {
            filters = Configure.GetFilters();
            var configure = Configure.GetConfigureByTags(new List<string>() {
                "Puerts.BindingAttribute",
                "Puerts.BlittableCopyAttribute",
                "Puerts.TypingAttribute",
            });

            var genTypes = configure["Puerts.BindingAttribute"].Select(kv => kv.Key)
                .Where(o => o is Type)
                .Cast<Type>()
                .Where(t => !t.IsGenericTypeDefinition);

            var blittableCopyTypes = new HashSet<Type>(configure["Puerts.BlittableCopyAttribute"].Select(kv => kv.Key)
                .Where(o => o is Type)
                .Cast<Type>()
                .Where(t => t.IsValueType && !t.IsPrimitive)
                .Distinct());

            var tsTypes = configure["Puerts.TypingAttribute"].Select(kv => kv.Key)
                .Where(o => o is Type)
                .Cast<Type>()
                .Where(t => !t.IsGenericTypeDefinition)
                .Concat(genTypes)
                .Distinct();

            using (var jsEnv = new JsEnv())
            {
                var templateGetter = jsEnv.Eval<Func<string, Func<object, string>>>("require('puerhx/gencode/main.js')");
                var wrapRender = templateGetter("type.hx.tpl");

                if (!tsOnly)
                {
                    var typeGenInfos = new List<TypeGenInfo>();
                    foreach (var type in genTypes)
                    {
                        if (type.IsEnum || type.IsArray || (IsDelegate(type) && type != typeof(Delegate))) continue;
                        TypeGenInfo typeGenInfo = ToTypeGenInfo(type);
                        typeGenInfo.BlittableCopy = blittableCopyTypes.Contains(type);
                        typeGenInfos.Add(typeGenInfo);
                        var nsPath = CreateNSDir(saveTo, typeGenInfo.Namespace);
                        string filePath = nsPath + typeGenInfo.Name + ".hx";
                        string fileContext = wrapRender(typeGenInfo);
                        using (StreamWriter textWriter = new StreamWriter(filePath, false, Encoding.UTF8))
                        {
                            textWriter.Write(fileContext);
                            textWriter.Flush();
                        }
                    }
                }
            }
        }

        private static string CreateNSDir(string baseDir, string ns)
        {
            var path = baseDir + ns.Replace('.', '/').ToLower() +"/";
            Directory.CreateDirectory(path);
            return path;
        }
        
        private static string GetHaxeFullClassName(string fullClassName){
            var ns = GetNamespace(fullClassName);
            var typeName = GetClassName(fullClassName);
            if(string.IsNullOrEmpty(ns)){
                return typeName;
            }
            else{
                return "csharp." + ns.ToLower() + "." + typeName;
            }
        }
        
        private static string GetClassName(string fullClassName){
            return fullClassName.Substring(fullClassName.LastIndexOf(".", StringComparison.Ordinal) + 1);
        }
        private static string GetNamespace(string fullClassName){
            var idx = fullClassName.LastIndexOf(".", StringComparison.Ordinal);
            if(idx == -1){
                return "";
            }
            return fullClassName.Substring(0, idx);
        }
    }
}