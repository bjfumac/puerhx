package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.Object") extern class Object extends csharp.system.Object {
	public function new();
	public var name:String;
	public var hideFlags:HideFlags;
	public function GetInstanceID():Float;
	public function Equals(other:Dynamic):Bool;
	static var prototype:Object;
	public static function op_Implicit(exists:Object):Bool;
	@:overload(function(original:Object, position:Vector3, rotation:Quaternion, parent:Transform):Object {})
	@:overload(function(original:Object):Object {})
	@:overload(function(original:Object, parent:Transform):Object {})
	@:overload(function(original:Object, parent:Transform, instantiateInWorldSpace:Bool):Object {})
	public static function Instantiate(original:Object, position:Vector3, rotation:Quaternion):Object;
	@:overload(function(obj:Object):Void {})
	public static function Destroy(obj:Object, t:Float):Void;
	@:overload(function(obj:Object):Void {})
	public static function DestroyImmediate(obj:Object, allowDestroyingAssets:Bool):Void;
	public static function FindObjectsOfType(type:csharp.system.Type_):Array<Object>;
	public static function DontDestroyOnLoad(target:Object):Void;
	public static function FindObjectOfType(type:csharp.system.Type_):Object;
	public static function op_Equality(x:Object, y:Object):Bool;
	public static function op_Inequality(x:Object, y:Object):Bool;
}
