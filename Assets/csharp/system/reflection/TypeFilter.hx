package csharp.system.reflection;

@:jsRequire("csharp", "System.Reflection.TypeFilter") @:forward @:forwardStatics extern abstract TypeFilter((m:csharp.system.Type, filterCriteria:Dynamic) -> Bool) from (m:csharp.system.Type, filterCriteria:Dynamic) -> Bool to (m:csharp.system.Type, filterCriteria:Dynamic) -> Bool {
	function new(func:(m:csharp.system.Type, filterCriteria:Dynamic) -> Bool);
}