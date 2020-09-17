package csharp.puertstest;

@:jsRequire("csharp", "PuertsTest.TestClass") extern class TestClass extends csharp.system.Object {
	public function new();
	public function AddEventCallback1(callback1:Callback1):Void;
	public function RemoveEventCallback1(callback1:Callback1):Void;
	public function AddEventCallback2(callback2:Callback2):Void;
	public function Trigger():Void;
	public function Foo():Void;
	static var prototype : TestClass;
}