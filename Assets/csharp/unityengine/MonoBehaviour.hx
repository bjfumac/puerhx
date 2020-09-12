package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.MonoBehaviour") extern class MonoBehaviour extends Behaviour {
	public function new();
	public var useGUILayout:Bool;
	public var runInEditMode:Bool;
	@:overload(function(methodName:String):Bool {})
	public function IsInvoking():Bool;
	@:overload(function(methodName:String):Void {})
	public function CancelInvoke():Void;
	public function Invoke(methodName:String, time:Float):Void;
	public function InvokeRepeating(methodName:String, time:Float, repeatRate:Float):Void;
	@:overload(function(methodName:String, value:Dynamic):Coroutine {})
	@:overload(function(routine:csharp.system.collections.IEnumerator):Coroutine {})
	public function StartCoroutine(methodName:String):Coroutine;
	@:overload(function(routine:Coroutine):Void {})
	@:overload(function(methodName:String):Void {})
	public function StopCoroutine(routine:csharp.system.collections.IEnumerator):Void;
	public function StopAllCoroutines():Void;
	static var prototype:MonoBehaviour;
	public static function print(message:Dynamic):Void;
}
