package csharp.system.reflection;

@:jsRequire("csharp", "System.Reflection.MemberTypes") @:enum extern abstract MemberTypes(Int) from Int to Int {
	var Constructor;
	var Event;
	var Field;
	var Method;
	var Property;
	var TypeInfo;
	var Custom;
	var NestedType;
	var All;
}