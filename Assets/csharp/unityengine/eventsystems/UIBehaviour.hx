package csharp.unityengine.eventsystems;

@:jsRequire("csharp", "UnityEngine.EventSystems.UIBehaviour") extern class UIBehaviour extends csharp.unityengine.MonoBehaviour {
	function new();
	public function IsActive():Bool;
	public function IsDestroyed():Bool;
	static var prototype : UIBehaviour;
}