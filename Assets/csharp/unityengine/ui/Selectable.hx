package csharp.unityengine.ui;

@:jsRequire("csharp", "UnityEngine.UI.Selectable") extern class Selectable extends csharp.unityengine.eventsystems.UIBehaviour {
	function new();
	public var navigation : Navigation;
	public var transition : csharp.unityengine.ui.selectable.Transition;
	public var colors : ColorBlock;
	public var spriteState : SpriteState;
	public var animationTriggers : AnimationTriggers;
	public var targetGraphic : Graphic;
	public var interactable : Bool;
	public var image : Image;
	public var animator : csharp.unityengine.Animator;
	public function IsInteractable():Bool;
	public function FindSelectable(dir:csharp.unityengine.Vector3):Selectable;
	public function FindSelectableOnLeft():Selectable;
	public function FindSelectableOnRight():Selectable;
	public function FindSelectableOnUp():Selectable;
	public function FindSelectableOnDown():Selectable;
	public function OnMove(eventData:csharp.unityengine.eventsystems.AxisEventData):Void;
	public function OnPointerDown(eventData:csharp.unityengine.eventsystems.PointerEventData):Void;
	public function OnPointerUp(eventData:csharp.unityengine.eventsystems.PointerEventData):Void;
	public function OnPointerEnter(eventData:csharp.unityengine.eventsystems.PointerEventData):Void;
	public function OnPointerExit(eventData:csharp.unityengine.eventsystems.PointerEventData):Void;
	public function OnSelect(eventData:csharp.unityengine.eventsystems.BaseEventData):Void;
	public function OnDeselect(eventData:csharp.unityengine.eventsystems.BaseEventData):Void;
	public function Select():Void;
	static var prototype : Selectable;
	public static var allSelectables : csharp.system.collections.generic.ListDollar1<Selectable>;
}