package csharp.unityengine.ui;

@:jsRequire("csharp", "UnityEngine.UI.Button") extern class Button extends Selectable {
	function new();
	public var onClick : csharp.unityengine.ui.button.ButtonClickedEvent;
	public function OnPointerClick(eventData:csharp.unityengine.eventsystems.PointerEventData):Void;
	public function OnSubmit(eventData:csharp.unityengine.eventsystems.BaseEventData):Void;
	static var prototype : Button;
}