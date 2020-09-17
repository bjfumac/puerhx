package csharp.system.reflection;

@:jsRequire("csharp", "System.Reflection.BindingFlags") @:enum extern abstract BindingFlags(Int) from Int to Int {
	var Default;
	var IgnoreCase;
	var DeclaredOnly;
	var Instance;
	var Static;
	var Public;
	var NonPublic;
	var FlattenHierarchy;
	var InvokeMethod;
	var CreateInstance;
	var GetField;
	var SetField;
	var GetProperty;
	var SetProperty;
	var PutDispProperty;
	var PutRefDispProperty;
	var ExactBinding;
	var SuppressChangeType;
	var OptionalParamBinding;
	var IgnoreReturn;
}