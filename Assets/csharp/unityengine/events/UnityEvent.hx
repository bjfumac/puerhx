package csharp.unityengine.events;

@:jsRequire("csharp", "UnityEngine.Events.UnityEvent") extern class UnityEvent extends UnityEventBase {
	public function new();
	public function AddListener(call:UnityAction):Void;
	public function RemoveListener(call:UnityAction):Void;
	public function Invoke():Void;
	static var prototype : UnityEvent;
}