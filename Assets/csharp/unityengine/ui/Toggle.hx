package csharp.unityengine.ui;

@:jsRequire("csharp", "UnityEngine.UI.Toggle") extern class Toggle extends Selectable {
	function new();
	public var toggleTransition:csharp.unityengine.ui.toggle.ToggleTransition;
	public var graphic:Graphic;
	public var onValueChanged:csharp.unityengine.ui.toggle.ToggleEvent;
	public var group:ToggleGroup;
	public var isOn:Bool;
	public function Rebuild(executing:CanvasUpdate):Void;
	public function LayoutComplete():Void;
	public function GraphicUpdateComplete():Void;
	public function SetIsOnWithoutNotify(value:Bool):Void;
	public function OnPointerClick(eventData:csharp.unityengine.eventsystems.PointerEventData):Void;
	public function OnSubmit(eventData:csharp.unityengine.eventsystems.BaseEventData):Void;
	static var prototype:Toggle;
}
