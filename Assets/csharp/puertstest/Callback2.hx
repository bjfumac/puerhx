package csharp.puertstest;

@:jsRequire("csharp", "PuertsTest.Callback2") @:forward @:forwardStatics extern abstract Callback2((str:Float) -> Void) from (str:Float) -> Void to (str:Float) -> Void {
	function new(func:(str:Float) -> Void);
}