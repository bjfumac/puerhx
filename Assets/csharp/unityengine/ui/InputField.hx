package csharp.unityengine.ui;

@:jsRequire("csharp", "UnityEngine.UI.InputField") extern class InputField extends Selectable {
	function new();
	public var shouldHideMobileInput:Bool;
	public var text:String;
	public var isFocused:Bool;
	public var caretBlinkRate:Float;
	public var caretWidth:Float;
	public var textComponent:Text;
	public var placeholder:Graphic;
	public var caretColor:csharp.unityengine.Color;
	public var customCaretColor:Bool;
	public var selectionColor:csharp.unityengine.Color;
	public var onEndEdit:csharp.unityengine.ui.inputfield.SubmitEvent;
	public var onValueChanged:csharp.unityengine.ui.inputfield.OnChangeEvent;
	public dynamic function onValidateInput(text:String, charIndex:Float, addedChar:csharp.system.Char):csharp.system.Char;
	public var characterLimit:Float;
	public var contentType:csharp.unityengine.ui.inputfield.ContentType;
	public var lineType:csharp.unityengine.ui.inputfield.LineType;
	public var inputType:csharp.unityengine.ui.inputfield.InputType;
	public var touchScreenKeyboard:csharp.unityengine.TouchScreenKeyboard;
	public var keyboardType:csharp.unityengine.TouchScreenKeyboardType;
	public var characterValidation:csharp.unityengine.ui.inputfield.CharacterValidation;
	public var readOnly:Bool;
	public var multiLine:Bool;
	public var asteriskChar:csharp.system.Char;
	public var wasCanceled:Bool;
	public var caretPosition:Float;
	public var selectionAnchorPosition:Float;
	public var selectionFocusPosition:Float;
	public var minWidth:Float;
	public var preferredWidth:Float;
	public var flexibleWidth:Float;
	public var minHeight:Float;
	public var preferredHeight:Float;
	public var flexibleHeight:Float;
	public var layoutPriority:Float;
	public function SetTextWithoutNotify(input:String):Void;
	public function MoveTextEnd(shift:Bool):Void;
	public function MoveTextStart(shift:Bool):Void;
	public function OnBeginDrag(eventData:csharp.unityengine.eventsystems.PointerEventData):Void;
	public function OnDrag(eventData:csharp.unityengine.eventsystems.PointerEventData):Void;
	public function OnEndDrag(eventData:csharp.unityengine.eventsystems.PointerEventData):Void;
	public function ProcessEvent(e:csharp.unityengine.Event):Void;
	public function OnUpdateSelected(eventData:csharp.unityengine.eventsystems.BaseEventData):Void;
	public function ForceLabelUpdate():Void;
	public function Rebuild(update:CanvasUpdate):Void;
	public function LayoutComplete():Void;
	public function GraphicUpdateComplete():Void;
	public function ActivateInputField():Void;
	public function OnPointerClick(eventData:csharp.unityengine.eventsystems.PointerEventData):Void;
	public function DeactivateInputField():Void;
	public function OnSubmit(eventData:csharp.unityengine.eventsystems.BaseEventData):Void;
	public function CalculateLayoutInputHorizontal():Void;
	public function CalculateLayoutInputVertical():Void;
	static var prototype:InputField;
}