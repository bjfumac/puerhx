package csharp.system;

@:jsRequire("csharp", "System.Object") extern class Object {
	public function new();
	public function Equals(obj:Dynamic):Bool;
	public function GetHashCode():Float;
	public function GetType():Type;
	public function ToString():String;
	static var prototype : Object;
	@:native("Equals")
	public static function Equals_(objA:Dynamic, objB:Dynamic):Bool;
	public static function ReferenceEquals(objA:Dynamic, objB:Dynamic):Bool;
}