package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.MonoBehaviour") extern class MonoBehaviour extends Behaviour {
	public function new();
	public var useGUILayout : Bool;
	public var runInEditMode : Bool;
	public function Invoke(methodName:String, time:Float):Void;
	public function InvokeRepeating(methodName:String, time:Float, repeatRate:Float):Void;
	@:overload(function(methodName:String):Void { })
	public function CancelInvoke():Void;
	@:overload(function():Bool { })
	public function IsInvoking(methodName:String):Bool;
	@:overload(function(methodName:String, value:Dynamic):Coroutine { })
	@:overload(function(methodName:String):Coroutine { })
	public function StartCoroutine(routine:csharp.system.collections.IEnumerator):Coroutine;
	public function StartCoroutine_Auto(routine:csharp.system.collections.IEnumerator):Coroutine;
	@:overload(function(routine:csharp.system.collections.IEnumerator):Void { })
	@:overload(function(routine:Coroutine):Void { })
	public function StopCoroutine(methodName:String):Void;
	public function StopAllCoroutines():Void;
	static var prototype : MonoBehaviour;
	public static function print(message:Dynamic):Void;
}