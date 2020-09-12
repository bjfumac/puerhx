package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.GameObject") extern class GameObject extends Object {
	@:overload(function():GameObject {})
	@:overload(function(name:String, components:haxe.extern.Rest<csharp.system.Type_>):GameObject {})
	public function new(name:String);
	public var transform:Transform;
	public var layer:Float;
	public var activeSelf:Bool;
	public var activeInHierarchy:Bool;
	public var isStatic:Bool;
	public var tag:String;
	public var scene:csharp.unityengine.scenemanagement.Scene;
	public var sceneCullingMask:{};
	public var gameObject:GameObject;
	@:overload(function(type:String):Component {})
	public function GetComponent(type:csharp.system.Type_):Component;
	@:overload(function(type:csharp.system.Type_):Component {})
	public function GetComponentInChildren(type:csharp.system.Type_, includeInactive:Bool):Component;
	public function GetComponentInParent(type:csharp.system.Type_):Component;
	@:overload(function(type:csharp.system.Type_, results:csharp.system.collections.generic.ListDollar1<Component>):Void {})
	public function GetComponents(type:csharp.system.Type_):Array<Component>;
	@:overload(function(type:csharp.system.Type_, includeInactive:Bool):Array<Component> {})
	public function GetComponentsInChildren(type:csharp.system.Type_):Array<Component>;
	@:overload(function(type:csharp.system.Type_, includeInactive:Bool):Array<Component> {})
	public function GetComponentsInParent(type:csharp.system.Type_):Array<Component>;
	public function TryGetComponent(type:csharp.system.Type_, component:csharp.DollarRef<Component>):Bool;
	@:overload(function(methodName:String, value:Dynamic, options:SendMessageOptions):Void {})
	@:overload(function(methodName:String, value:Dynamic):Void {})
	@:overload(function(methodName:String):Void {})
	public function SendMessageUpwards(methodName:String, options:SendMessageOptions):Void;
	@:overload(function(methodName:String, value:Dynamic, options:SendMessageOptions):Void {})
	@:overload(function(methodName:String, value:Dynamic):Void {})
	@:overload(function(methodName:String):Void {})
	public function SendMessage(methodName:String, options:SendMessageOptions):Void;
	@:overload(function(methodName:String, parameter:Dynamic, options:SendMessageOptions):Void {})
	@:overload(function(methodName:String, parameter:Dynamic):Void {})
	@:overload(function(methodName:String):Void {})
	public function BroadcastMessage(methodName:String, options:SendMessageOptions):Void;
	public function AddComponent(componentType:csharp.system.Type_):Component;
	public function SetActive(value:Bool):Void;
	public function CompareTag(tag:String):Bool;
	static var prototype:GameObject;
	public static function CreatePrimitive(type:PrimitiveType):GameObject;
	public static function FindWithTag(tag:String):GameObject;
	public static function FindGameObjectWithTag(tag:String):GameObject;
	public static function FindGameObjectsWithTag(tag:String):Array<GameObject>;
	public static function Find(name:String):GameObject;
}
