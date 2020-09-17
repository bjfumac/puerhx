package csharp.system;

@:jsRequire("csharp", "System.Type") extern class Type extends csharp.system.reflection.MemberInfo {
	function new();
	public var Assembly : csharp.system.reflection.Assembly;
	public var AssemblyQualifiedName : String;
	public var Attributes : csharp.system.reflection.TypeAttributes;
	public var BaseType : Type;
	public var DeclaringType : Type;
	public var FullName : String;
	public var GUID : Guid;
	public var HasElementType : Bool;
	public var IsAbstract : Bool;
	public var IsAnsiClass : Bool;
	public var IsArray : Bool;
	public var IsAutoClass : Bool;
	public var IsAutoLayout : Bool;
	public var IsByRef : Bool;
	public var IsClass : Bool;
	public var IsCOMObject : Bool;
	public var IsContextful : Bool;
	public var IsEnum : Bool;
	public var IsExplicitLayout : Bool;
	public var IsImport : Bool;
	public var IsInterface : Bool;
	public var IsLayoutSequential : Bool;
	public var IsMarshalByRef : Bool;
	public var IsNestedAssembly : Bool;
	public var IsNestedFamANDAssem : Bool;
	public var IsNestedFamily : Bool;
	public var IsNestedFamORAssem : Bool;
	public var IsNestedPrivate : Bool;
	public var IsNestedPublic : Bool;
	public var IsNotPublic : Bool;
	public var IsPointer : Bool;
	public var IsPrimitive : Bool;
	public var IsPublic : Bool;
	public var IsSealed : Bool;
	public var IsSerializable : Bool;
	public var IsSpecialName : Bool;
	public var IsUnicodeClass : Bool;
	public var IsValueType : Bool;
	public var MemberType : csharp.system.reflection.MemberTypes;
	public var Module : csharp.system.reflection.Module;
	public var Namespace : String;
	public var ReflectedType : Type;
	public var TypeHandle : RuntimeTypeHandle;
	public var TypeInitializer : csharp.system.reflection.ConstructorInfo;
	public var UnderlyingSystemType : Type;
	public var ContainsGenericParameters : Bool;
	public var IsGenericTypeDefinition : Bool;
	public var IsGenericType : Bool;
	public var IsGenericParameter : Bool;
	public var IsNested : Bool;
	public var IsVisible : Bool;
	public var GenericParameterPosition : Float;
	public var GenericParameterAttributes : csharp.system.reflection.GenericParameterAttributes;
	public var DeclaringMethod : csharp.system.reflection.MethodBase;
	public var StructLayoutAttribute : csharp.system.runtime.interopservices.StructLayoutAttribute;
	@:overload(function(o:Type):Bool { })
	public function Equals(o:Dynamic):Bool;
	public function GetType():Type;
	public function IsSubclassOf(c:Type):Bool;
	public function FindInterfaces(filter:csharp.system.reflection.TypeFilter, filterCriteria:Dynamic):Array<Type>;
	@:overload(function(name:String, ignoreCase:Bool):Type { })
	public function GetInterface(name:String):Type;
	public function GetInterfaceMap(interfaceType:Type):csharp.system.reflection.InterfaceMapping;
	public function GetInterfaces():Array<Type>;
	public function IsAssignableFrom(c:Type):Bool;
	public function IsInstanceOfType(o:Dynamic):Bool;
	public function GetArrayRank():Float;
	public function GetElementType():Type;
	@:overload(function(name:String, bindingAttr:csharp.system.reflection.BindingFlags):csharp.system.reflection.EventInfo { })
	public function GetEvent(name:String):csharp.system.reflection.EventInfo;
	@:overload(function(bindingAttr:csharp.system.reflection.BindingFlags):Array<csharp.system.reflection.EventInfo> { })
	public function GetEvents():Array<csharp.system.reflection.EventInfo>;
	@:overload(function(name:String, bindingAttr:csharp.system.reflection.BindingFlags):csharp.system.reflection.FieldInfo { })
	public function GetField(name:String):csharp.system.reflection.FieldInfo;
	@:overload(function(bindingAttr:csharp.system.reflection.BindingFlags):Array<csharp.system.reflection.FieldInfo> { })
	public function GetFields():Array<csharp.system.reflection.FieldInfo>;
	public function GetHashCode():Float;
	@:overload(function(name:String, bindingAttr:csharp.system.reflection.BindingFlags):Array<csharp.system.reflection.MemberInfo> { })
	@:overload(function(name:String, type:csharp.system.reflection.MemberTypes, bindingAttr:csharp.system.reflection.BindingFlags):Array<csharp.system.reflection.MemberInfo> { })
	public function GetMember(name:String):Array<csharp.system.reflection.MemberInfo>;
	@:overload(function(bindingAttr:csharp.system.reflection.BindingFlags):Array<csharp.system.reflection.MemberInfo> { })
	public function GetMembers():Array<csharp.system.reflection.MemberInfo>;
	@:overload(function(name:String, bindingAttr:csharp.system.reflection.BindingFlags):csharp.system.reflection.MethodInfo { })
	@:overload(function(name:String, types:Array<Type>):csharp.system.reflection.MethodInfo { })
	@:overload(function(name:String, types:Array<Type>, modifiers:Array<csharp.system.reflection.ParameterModifier>):csharp.system.reflection.MethodInfo { })
	@:overload(function(name:String, bindingAttr:csharp.system.reflection.BindingFlags, binder:csharp.system.reflection.Binder, types:Array<Type>, modifiers:Array<csharp.system.reflection.ParameterModifier>):csharp.system.reflection.MethodInfo { })
	@:overload(function(name:String, bindingAttr:csharp.system.reflection.BindingFlags, binder:csharp.system.reflection.Binder, callConvention:csharp.system.reflection.CallingConventions, types:Array<Type>, modifiers:Array<csharp.system.reflection.ParameterModifier>):csharp.system.reflection.MethodInfo { })
	public function GetMethod(name:String):csharp.system.reflection.MethodInfo;
	@:overload(function(bindingAttr:csharp.system.reflection.BindingFlags):Array<csharp.system.reflection.MethodInfo> { })
	public function GetMethods():Array<csharp.system.reflection.MethodInfo>;
	@:overload(function(name:String, bindingAttr:csharp.system.reflection.BindingFlags):Type { })
	public function GetNestedType(name:String):Type;
	@:overload(function(bindingAttr:csharp.system.reflection.BindingFlags):Array<Type> { })
	public function GetNestedTypes():Array<Type>;
	@:overload(function(bindingAttr:csharp.system.reflection.BindingFlags):Array<csharp.system.reflection.PropertyInfo> { })
	public function GetProperties():Array<csharp.system.reflection.PropertyInfo>;
	@:overload(function(name:String, bindingAttr:csharp.system.reflection.BindingFlags):csharp.system.reflection.PropertyInfo { })
	@:overload(function(name:String, returnType:Type):csharp.system.reflection.PropertyInfo { })
	@:overload(function(name:String, types:Array<Type>):csharp.system.reflection.PropertyInfo { })
	@:overload(function(name:String, returnType:Type, types:Array<Type>):csharp.system.reflection.PropertyInfo { })
	@:overload(function(name:String, returnType:Type, types:Array<Type>, modifiers:Array<csharp.system.reflection.ParameterModifier>):csharp.system.reflection.PropertyInfo { })
	@:overload(function(name:String, bindingAttr:csharp.system.reflection.BindingFlags, binder:csharp.system.reflection.Binder, returnType:Type, types:Array<Type>, modifiers:Array<csharp.system.reflection.ParameterModifier>):csharp.system.reflection.PropertyInfo { })
	public function GetProperty(name:String):csharp.system.reflection.PropertyInfo;
	@:overload(function(bindingAttr:csharp.system.reflection.BindingFlags, binder:csharp.system.reflection.Binder, types:Array<Type>, modifiers:Array<csharp.system.reflection.ParameterModifier>):csharp.system.reflection.ConstructorInfo { })
	@:overload(function(bindingAttr:csharp.system.reflection.BindingFlags, binder:csharp.system.reflection.Binder, callConvention:csharp.system.reflection.CallingConventions, types:Array<Type>, modifiers:Array<csharp.system.reflection.ParameterModifier>):csharp.system.reflection.ConstructorInfo { })
	public function GetConstructor(types:Array<Type>):csharp.system.reflection.ConstructorInfo;
	@:overload(function(bindingAttr:csharp.system.reflection.BindingFlags):Array<csharp.system.reflection.ConstructorInfo> { })
	public function GetConstructors():Array<csharp.system.reflection.ConstructorInfo>;
	public function GetDefaultMembers():Array<csharp.system.reflection.MemberInfo>;
	public function FindMembers(memberType:csharp.system.reflection.MemberTypes, bindingAttr:csharp.system.reflection.BindingFlags, filter:csharp.system.reflection.MemberFilter, filterCriteria:Dynamic):Array<csharp.system.reflection.MemberInfo>;
	@:overload(function(name:String, invokeAttr:csharp.system.reflection.BindingFlags, binder:csharp.system.reflection.Binder, target:Dynamic, args:Array<Dynamic>, culture:csharp.system.globalization.CultureInfo):Dynamic { })
	@:overload(function(name:String, invokeAttr:csharp.system.reflection.BindingFlags, binder:csharp.system.reflection.Binder, target:Dynamic, args:Array<Dynamic>, modifiers:Array<csharp.system.reflection.ParameterModifier>, culture:csharp.system.globalization.CultureInfo, namedParameters:Array<String>):Dynamic { })
	public function InvokeMember(name:String, invokeAttr:csharp.system.reflection.BindingFlags, binder:csharp.system.reflection.Binder, target:Dynamic, args:Array<Dynamic>):Dynamic;
	public function ToString():String;
	public function GetGenericArguments():Array<Type>;
	public function GetGenericTypeDefinition():Type;
	public function MakeGenericType(typeArguments:haxe.extern.Rest<Type>):Type;
	public function GetGenericParameterConstraints():Array<Type>;
	@:overload(function(rank:Float):Type { })
	public function MakeArrayType():Type;
	public function MakeByRefType():Type;
	public function MakePointerType():Type;
	static var prototype : Type;
	public static var Delimiter : Char;
	public static var EmptyTypes : Array<Type>;
	public static dynamic function FilterAttribute(m:csharp.system.reflection.MemberInfo, filterCriteria:Dynamic):Bool;
	public static dynamic function FilterName(m:csharp.system.reflection.MemberInfo, filterCriteria:Dynamic):Bool;
	public static dynamic function FilterNameIgnoreCase(m:csharp.system.reflection.MemberInfo, filterCriteria:Dynamic):Bool;
	public static var Missing : Dynamic;
	public static var DefaultBinder : csharp.system.reflection.Binder;
	@:overload(function(typeName:String, throwOnError:Bool):Type { })
	@:overload(function(typeName:String, throwOnError:Bool, ignoreCase:Bool):Type { })
	@:native("GetType")
	public static function GetType_(typeName:String):Type;
	public static function GetTypeArray(args:Array<Dynamic>):Array<Type>;
	public static function GetTypeCode(type:Type):TypeCode;
	@:overload(function(clsid:Guid, throwOnError:Bool):Type { })
	@:overload(function(clsid:Guid, server:String):Type { })
	@:overload(function(clsid:Guid, server:String, throwOnError:Bool):Type { })
	public static function GetTypeFromCLSID(clsid:Guid):Type;
	public static function GetTypeFromHandle(handle:RuntimeTypeHandle):Type;
	@:overload(function(progID:String, throwOnError:Bool):Type { })
	@:overload(function(progID:String, server:String):Type { })
	@:overload(function(progID:String, server:String, throwOnError:Bool):Type { })
	public static function GetTypeFromProgID(progID:String):Type;
	public static function GetTypeHandle(o:Dynamic):RuntimeTypeHandle;
	public static function ReflectionOnlyGetType(typeName:String, throwIfNotFound:Bool, ignoreCase:Bool):Type;
}