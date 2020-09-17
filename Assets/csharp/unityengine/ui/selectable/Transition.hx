package csharp.unityengine.ui.selectable;

@:jsRequire("csharp", "UnityEngine.UI.Selectable.Transition") @:enum extern abstract Transition(Int) from Int to Int {
	var None;
	var ColorTint;
	var SpriteSwap;
	var Animation;
}