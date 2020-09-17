package csharp.puertstest;

@:jsRequire("csharp", "PuertsTest.BaseClass") extern class BaseClass extends csharp.system.Object {
	public function new();
	public var BMF : Float;
	public function BMFunc():Void;
	static var prototype : BaseClass;
	public static var BSF : Float;
	public static function BSFunc():Void;
}