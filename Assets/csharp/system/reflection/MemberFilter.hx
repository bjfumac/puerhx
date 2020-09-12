package csharp.system.reflection;

@:jsRequire("csharp", "System.Reflection.MemberFilter") @:forward @:forwardStatics extern abstract MemberFilter((m:MemberInfo,
		filterCriteria:Dynamic) -> Bool) from(m:MemberInfo, filterCriteria:Dynamic) -> Bool to(m:MemberInfo, filterCriteria:Dynamic) -> Bool {
	function new(func:(m:MemberInfo, filterCriteria:Dynamic) -> Bool);
}
