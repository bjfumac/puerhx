package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.Component") extern class Component extends Object {
	public function new();
	public var transform : Transform;
	public var gameObject : GameObject;
	public var tag : String;
	@:overload(function(type:String):Component { })
	public function GetComponent(type:csharp.system.Type):Component;
	@:overload(function(t:csharp.system.Type):Component { })
	public function GetComponentInChildren(t:csharp.system.Type, includeInactive:Bool):Component;
	@:overload(function(t:csharp.system.Type, includeInactive:Bool):Array<Component> { })
	public function GetComponentsInChildren(t:csharp.system.Type):Array<Component>;
	public function GetComponentInParent(t:csharp.system.Type):Component;
	@:overload(function(t:csharp.system.Type, includeInactive:Bool):Array<Component> { })
	public function GetComponentsInParent(t:csharp.system.Type):Array<Component>;
	@:overload(function(type:csharp.system.Type, results:csharp.system.collections.generic.ListDollar1<Component>):Void { })
	public function GetComponents(type:csharp.system.Type):Array<Component>;
	public function CompareTag(tag:String):Bool;
	@:overload(function(methodName:String, value:Dynamic):Void { })
	@:overload(function(methodName:String):Void { })
	@:overload(function(methodName:String, options:SendMessageOptions):Void { })
	public function SendMessageUpwards(methodName:String, value:Dynamic, options:SendMessageOptions):Void;
	@:overload(function(methodName:String, value:Dynamic):Void { })
	@:overload(function(methodName:String):Void { })
	@:overload(function(methodName:String, options:SendMessageOptions):Void { })
	public function SendMessage(methodName:String, value:Dynamic, options:SendMessageOptions):Void;
	@:overload(function(methodName:String, parameter:Dynamic):Void { })
	@:overload(function(methodName:String):Void { })
	@:overload(function(methodName:String, options:SendMessageOptions):Void { })
	public function BroadcastMessage(methodName:String, parameter:Dynamic, options:SendMessageOptions):Void;
	static var prototype : Component;
}