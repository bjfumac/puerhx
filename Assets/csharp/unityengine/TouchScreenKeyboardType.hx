package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.TouchScreenKeyboardType") @:enum extern abstract TouchScreenKeyboardType(Int) from Int to Int {
	var Default;
	var ASCIICapable;
	var NumbersAndPunctuation;
	var URL;
	var NumberPad;
	var PhonePad;
	var NamePhonePad;
	var EmailAddress;
	var NintendoNetworkAccount;
	var Social;
	var Search;
	var DecimalPad;
}
