package csharp.unityengine.ui.inputfield;

@:jsRequire("csharp", "UnityEngine.UI.InputField.OnValidateInput") @:forward @:forwardStatics extern abstract OnValidateInput((text:String, charIndex:Float,
		addedChar:csharp.system.Char) -> csharp.system.Char) from(text:String, charIndex:Float,
	addedChar:csharp.system.Char) -> csharp.system.Char to(text:String, charIndex:Float, addedChar:csharp.system.Char) -> csharp.system.Char {
	function new(func:(text:String, charIndex:Float, addedChar:csharp.system.Char) -> csharp.system.Char);
}
