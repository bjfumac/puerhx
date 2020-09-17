package csharp.unityengine.ui.inputfield;

@:jsRequire("csharp", "UnityEngine.UI.InputField.LineType") @:enum extern abstract LineType(Int) from Int to Int {
	var SingleLine;
	var MultiLineSubmit;
	var MultiLineNewline;
}