package csharp.unityengine.ui.inputfield;

@:jsRequire("csharp", "UnityEngine.UI.InputField.ContentType") @:enum extern abstract ContentType(Int) from Int to Int {
	var Standard;
	var Autocorrected;
	var IntegerNumber;
	var DecimalNumber;
	var Alphanumeric;
	var Name;
	var EmailAddress;
	var Password;
	var Pin;
	var Custom;
}