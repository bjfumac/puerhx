package csharp.puertstest;

@:jsRequire("csharp", "PuertsTest.MyCallback") @:forward @:forwardStatics extern abstract MyCallback((msg:String) -> Void) from (msg:String) -> Void to (msg:String) -> Void {
	function new(func:(msg:String) -> Void);
}