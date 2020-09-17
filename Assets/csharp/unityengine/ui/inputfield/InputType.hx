package csharp.unityengine.ui.inputfield;

@:jsRequire("csharp", "UnityEngine.UI.InputField.InputType") @:enum extern abstract InputType(Int) from Int to Int {
	var Standard;
	var AutoCorrect;
	var Password;
}