package csharp.puertstest;

@:jsRequire("csharp", "PuertsTest.Callback1") @:forward @:forwardStatics extern abstract Callback1((obj:TestClass) -> Void) from (obj:TestClass) -> Void to (obj:TestClass) -> Void {
	function new(func:(obj:TestClass) -> Void);
}