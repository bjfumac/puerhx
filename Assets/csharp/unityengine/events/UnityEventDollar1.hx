package csharp.unityengine.events;

@:jsRequire("csharp", "UnityEngine.Events.UnityEvent$1") extern class UnityEventDollar1<T0> extends UnityEventBase {
	function new();
	public function AddListener(call:UnityActionDollar1<T0>):Void;
	public function RemoveListener(call:UnityActionDollar1<T0>):Void;
	public function Invoke(arg0:T0):Void;
	static var prototype : UnityEventDollar1<Dynamic>;
}