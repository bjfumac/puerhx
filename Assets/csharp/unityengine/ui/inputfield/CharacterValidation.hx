package csharp.unityengine.ui.inputfield;

@:jsRequire("csharp", "UnityEngine.UI.InputField.CharacterValidation") @:enum extern abstract CharacterValidation(Int) from Int to Int {
	var None;
	var Integer;
	var Decimal;
	var Alphanumeric;
	var Name;
	var EmailAddress;
}