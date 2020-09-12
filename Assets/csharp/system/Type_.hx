package csharp.system;

@:jsRequire("csharp", "System.Type") extern class Type_ extends csharp.system.reflection.MemberInfo {
	function new();
	public var MemberType:csharp.system.reflection.MemberTypes;
	public var DeclaringType:Type_;
	public var DeclaringMethod:csharp.system.reflection.MethodBase;
	public var ReflectedType:Type_;
	public var StructLayoutAttribute:csharp.system.runtime.interopservices.StructLayoutAttribute;
	public var GUID:Guid;
	public var Module:csharp.system.reflection.Module;
	public var Assembly:csharp.system.reflection.Assembly;
	public var TypeHandle:RuntimeTypeHandle;
	public var FullName:String;
	public var Namespace:String;
	public var AssemblyQualifiedName:String;
	public var BaseType:Type_;
	public var TypeInitializer:csharp.system.reflection.ConstructorInfo;
	public var IsNested:Bool;
	public var Attributes:csharp.system.reflection.TypeAttributes;
	public var GenericParameterAttributes:csharp.system.reflection.GenericParameterAttributes;
	public var IsVisible:Bool;
	public var IsNotPublic:Bool;
	public var IsPublic:Bool;
	public var IsNestedPublic:Bool;
	public var IsNestedPrivate:Bool;
	public var IsNestedFamily:Bool;
	public var IsNestedAssembly:Bool;
	public var IsNestedFamANDAssem:Bool;
	public var IsNestedFamORAssem:Bool;
	public var IsAutoLayout:Bool;
	public var IsLayoutSequential:Bool;
	public var IsExplicitLayout:Bool;
	public var IsClass:Bool;
	public var IsInterface:Bool;
	public var IsValueType:Bool;
	public var IsAbstract:Bool;
	public var IsSealed:Bool;
	public var IsEnum:Bool;
	public var IsSpecialName:Bool;
	public var IsImport:Bool;
	public var IsSerializable:Bool;
	public var IsAnsiClass:Bool;
	public var IsUnicodeClass:Bool;
	public var IsAutoClass:Bool;
	public var IsArray:Bool;
	public var IsGenericType:Bool;
	public var IsGenericTypeDefinition:Bool;
	public var IsConstructedGenericType:Bool;
	public var IsGenericParameter:Bool;
	public var GenericParameterPosition:Float;
	public var ContainsGenericParameters:Bool;
	public var IsByRef:Bool;
	public var IsPointer:Bool;
	public var IsPrimitive:Bool;
	public var IsCOMObject:Bool;
	public var HasElementType:Bool;
	public var IsContextful:Bool;
	public var IsMarshalByRef:Bool;
	public var GenericTypeArguments:Array<Type_>;
	public var IsSecurityCritical:Bool;
	public var IsSecuritySafeCritical:Bool;
	public var IsSecurityTransparent:Bool;
	public var UnderlyingSystemType:Type_;
	public function MakePointerType():Type_;
	public function MakeByRefType():Type_;
	@:overload(function(rank:Float):Type_ {})
	public function MakeArrayType():Type_;
	@:overload(function(name:String, invokeAttr:csharp.system.reflection.BindingFlags, binder:csharp.system.reflection.Binder, target:Dynamic,
		args:Array<Dynamic>, culture:csharp.system.globalization.CultureInfo):Dynamic {})
	@:overload(function(name:String, invokeAttr:csharp.system.reflection.BindingFlags, binder:csharp.system.reflection.Binder, target:Dynamic,
		args:Array<Dynamic>):Dynamic {})
	public function InvokeMember(name:String, invokeAttr:csharp.system.reflection.BindingFlags, binder:csharp.system.reflection.Binder, target:Dynamic,
		args:Array<Dynamic>, modifiers:Array<csharp.system.reflection.ParameterModifier>, culture:csharp.system.globalization.CultureInfo,
		namedParameters:Array<String>):Dynamic;
	public function GetArrayRank():Float;
	@:overload(function(bindingAttr:csharp.system.reflection.BindingFlags, binder:csharp.system.reflection.Binder, types:Array<Type_>,
		modifiers:Array<csharp.system.reflection.ParameterModifier>):csharp.system.reflection.ConstructorInfo {})
	@:overload(function(types:Array<Type_>):csharp.system.reflection.ConstructorInfo {})
	public function GetConstructor(bindingAttr:csharp.system.reflection.BindingFlags, binder:csharp.system.reflection.Binder,
		callConvention:csharp.system.reflection.CallingConventions, types:Array<Type_>,
		modifiers:Array<csharp.system.reflection.ParameterModifier>):csharp.system.reflection.ConstructorInfo;
	@:overload(function(bindingAttr:csharp.system.reflection.BindingFlags):Array<csharp.system.reflection.ConstructorInfo> {})
	public function GetConstructors():Array<csharp.system.reflection.ConstructorInfo>;
	@:overload(function(name:String, bindingAttr:csharp.system.reflection.BindingFlags, binder:csharp.system.reflection.Binder, types:Array<Type_>,
		modifiers:Array<csharp.system.reflection.ParameterModifier>):csharp.system.reflection.MethodInfo {})
	@:overload(function(name:String, types:Array<Type_>, modifiers:Array<csharp.system.reflection.ParameterModifier>):csharp.system.reflection.MethodInfo {})
	@:overload(function(name:String, types:Array<Type_>):csharp.system.reflection.MethodInfo {})
	@:overload(function(name:String, bindingAttr:csharp.system.reflection.BindingFlags):csharp.system.reflection.MethodInfo {})
	@:overload(function(name:String):csharp.system.reflection.MethodInfo {})
	public function GetMethod(name:String, bindingAttr:csharp.system.reflection.BindingFlags, binder:csharp.system.reflection.Binder,
		callConvention:csharp.system.reflection.CallingConventions, types:Array<Type_>,
		modifiers:Array<csharp.system.reflection.ParameterModifier>):csharp.system.reflection.MethodInfo;
	@:overload(function(bindingAttr:csharp.system.reflection.BindingFlags):Array<csharp.system.reflection.MethodInfo> {})
	public function GetMethods():Array<csharp.system.reflection.MethodInfo>;
	@:overload(function(name:String):csharp.system.reflection.FieldInfo {})
	public function GetField(name:String, bindingAttr:csharp.system.reflection.BindingFlags):csharp.system.reflection.FieldInfo;
	@:overload(function(bindingAttr:csharp.system.reflection.BindingFlags):Array<csharp.system.reflection.FieldInfo> {})
	public function GetFields():Array<csharp.system.reflection.FieldInfo>;
	@:overload(function(name:String, ignoreCase:Bool):Type_ {})
	public function GetInterface(name:String):Type_;
	public function GetInterfaces():Array<Type_>;
	public function FindInterfaces(filter:csharp.system.reflection.TypeFilter, filterCriteria:Dynamic):Array<Type_>;
	@:overload(function(name:String, bindingAttr:csharp.system.reflection.BindingFlags):csharp.system.reflection.EventInfo {})
	public function GetEvent(name:String):csharp.system.reflection.EventInfo;
	@:overload(function(bindingAttr:csharp.system.reflection.BindingFlags):Array<csharp.system.reflection.EventInfo> {})
	public function GetEvents():Array<csharp.system.reflection.EventInfo>;
	@:overload(function(name:String, returnType:Type_, types:Array<Type_>,
		modifiers:Array<csharp.system.reflection.ParameterModifier>):csharp.system.reflection.PropertyInfo {})
	@:overload(function(name:String, bindingAttr:csharp.system.reflection.BindingFlags):csharp.system.reflection.PropertyInfo {})
	@:overload(function(name:String, returnType:Type_, types:Array<Type_>):csharp.system.reflection.PropertyInfo {})
	@:overload(function(name:String, types:Array<Type_>):csharp.system.reflection.PropertyInfo {})
	@:overload(function(name:String, returnType:Type_):csharp.system.reflection.PropertyInfo {})
	@:overload(function(name:String):csharp.system.reflection.PropertyInfo {})
	public function GetProperty(name:String, bindingAttr:csharp.system.reflection.BindingFlags, binder:csharp.system.reflection.Binder, returnType:Type_,
		types:Array<Type_>, modifiers:Array<csharp.system.reflection.ParameterModifier>):csharp.system.reflection.PropertyInfo;
	@:overload(function():Array<csharp.system.reflection.PropertyInfo> {})
	public function GetProperties(bindingAttr:csharp.system.reflection.BindingFlags):Array<csharp.system.reflection.PropertyInfo>;
	@:overload(function(bindingAttr:csharp.system.reflection.BindingFlags):Array<Type_> {})
	public function GetNestedTypes():Array<Type_>;
	@:overload(function(name:String, bindingAttr:csharp.system.reflection.BindingFlags):Type_ {})
	public function GetNestedType(name:String):Type_;
	@:overload(function(name:String, bindingAttr:csharp.system.reflection.BindingFlags):Array<csharp.system.reflection.MemberInfo> {})
	@:overload(function(name:String, type:csharp.system.reflection.MemberTypes,
		bindingAttr:csharp.system.reflection.BindingFlags):Array<csharp.system.reflection.MemberInfo> {})
	public function GetMember(name:String):Array<csharp.system.reflection.MemberInfo>;
	@:overload(function(bindingAttr:csharp.system.reflection.BindingFlags):Array<csharp.system.reflection.MemberInfo> {})
	public function GetMembers():Array<csharp.system.reflection.MemberInfo>;
	public function GetDefaultMembers():Array<csharp.system.reflection.MemberInfo>;
	public function FindMembers(memberType:csharp.system.reflection.MemberTypes, bindingAttr:csharp.system.reflection.BindingFlags,
		filter:csharp.system.reflection.MemberFilter, filterCriteria:Dynamic):Array<csharp.system.reflection.MemberInfo>;
	public function GetGenericParameterConstraints():Array<Type_>;
	public function MakeGenericType(typeArguments:haxe.extern.Rest<Type_>):Type_;
	public function GetElementType():Type_;
	public function GetGenericArguments():Array<Type_>;
	public function GetGenericTypeDefinition():Type_;
	public function GetEnumNames():Array<String>;
	public function GetEnumValues():Array_;
	public function GetEnumUnderlyingType():Type_;
	public function IsEnumDefined(value:Dynamic):Bool;
	public function GetEnumName(value:Dynamic):String;
	public function IsSubclassOf(c:Type_):Bool;
	public function IsInstanceOfType(o:Dynamic):Bool;
	public function IsAssignableFrom(c:Type_):Bool;
	public function IsEquivalentTo(other:Type_):Bool;
	@:overload(function(o:Type_):Bool {})
	public function Equals(o:Dynamic):Bool;
	public function GetInterfaceMap(interfaceType:Type_):csharp.system.reflection.InterfaceMapping;
	static var prototype:Type_;
	public static dynamic function FilterAttribute(m:csharp.system.reflection.MemberInfo, filterCriteria:Dynamic):Bool;
	public static dynamic function FilterName(m:csharp.system.reflection.MemberInfo, filterCriteria:Dynamic):Bool;
	public static dynamic function FilterNameIgnoreCase(m:csharp.system.reflection.MemberInfo, filterCriteria:Dynamic):Bool;
	public static var Missing:Dynamic;
	public static var Delimiter:Char;
	public static var EmptyTypes:Array<Type_>;
	public static var DefaultBinder:csharp.system.reflection.Binder;
	@:overload(function(typeName:String, assemblyResolver:FuncDollar2<csharp.system.reflection.AssemblyName, csharp.system.reflection.Assembly>,
		typeResolver:FuncDollar4<csharp.system.reflection.Assembly, String, Bool, Type_>, throwOnError:Bool):Type_ {})
	@:overload(function(typeName:String, assemblyResolver:FuncDollar2<csharp.system.reflection.AssemblyName, csharp.system.reflection.Assembly>,
		typeResolver:FuncDollar4<csharp.system.reflection.Assembly, String, Bool, Type_>, throwOnError:Bool, ignoreCase:Bool):Type_ {})
	@:overload(function(typeName:String):Type_ {})
	@:overload(function(typeName:String, throwOnError:Bool):Type_ {})
	@:overload(function(typeName:String, throwOnError:Bool, ignoreCase:Bool):Type_ {})
	public static function GetType(typeName:String, assemblyResolver:FuncDollar2<csharp.system.reflection.AssemblyName, csharp.system.reflection.Assembly>,
		typeResolver:FuncDollar4<csharp.system.reflection.Assembly, String, Bool, Type_>):Type_;
	@:overload(function(progID:String, throwOnError:Bool):Type_ {})
	@:overload(function(progID:String, server:String):Type_ {})
	@:overload(function(progID:String, server:String, throwOnError:Bool):Type_ {})
	public static function GetTypeFromProgID(progID:String):Type_;
	@:overload(function(clsid:Guid, throwOnError:Bool):Type_ {})
	@:overload(function(clsid:Guid, server:String):Type_ {})
	@:overload(function(clsid:Guid, server:String, throwOnError:Bool):Type_ {})
	public static function GetTypeFromCLSID(clsid:Guid):Type_;
	public static function GetTypeCode(type:Type_):TypeCode;
	public static function GetTypeHandle(o:Dynamic):RuntimeTypeHandle;
	public static function GetTypeArray(args:Array<Dynamic>):Array<Type_>;
	public static function op_Equality(left:Type_, right:Type_):Bool;
	public static function op_Inequality(left:Type_, right:Type_):Bool;
	public static function ReflectionOnlyGetType(typeName:String, throwIfNotFound:Bool, ignoreCase:Bool):Type_;
	public static function GetTypeFromHandle(handle:RuntimeTypeHandle):Type_;
}
