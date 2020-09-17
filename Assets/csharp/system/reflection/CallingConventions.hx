package csharp.system.reflection;

@:jsRequire("csharp", "System.Reflection.CallingConventions") @:enum extern abstract CallingConventions(Int) from Int to Int {
	var Standard;
	var VarArgs;
	var Any;
	var HasThis;
	var ExplicitThis;
}