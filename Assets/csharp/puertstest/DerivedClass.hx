package csharp.puertstest;

@:jsRequire("csharp", "PuertsTest.DerivedClass") extern class DerivedClass extends BaseClass {
	public function new();
	public dynamic function MyCallback(msg:String):Void;
	public var DMF : Float;
	@:overload(function(myEnum:MyEnum):MyEnum { })
	public function DMFunc():Void;
	public function add_MyEvent(value:MyCallback):Void;
	public function remove_MyEvent(value:MyCallback):Void;
	public function Trigger():Void;
	public function ParamsFunc(a:Float, b:haxe.extern.Rest<String>):Float;
	public function InOutArgFunc(a:Float, b:csharp.DollarRef<Float>, c:csharp.DollarRef<Float>):Float;
	public function PrintList(lst:csharp.system.collections.generic.ListDollar1<Float>):Void;
	public function GetAb(size:Float):js.lib.ArrayBuffer;
	public function SumOfAb(ab:js.lib.ArrayBuffer):Float;
	static var prototype : DerivedClass;
	public static var DSF : Float;
	public static function DSFunc():Void;
	public static function add_MyStaticEvent(value:MyCallback):Void;
	public static function remove_MyStaticEvent(value:MyCallback):Void;
}