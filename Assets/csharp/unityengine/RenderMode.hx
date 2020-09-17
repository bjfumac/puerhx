package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.RenderMode") @:enum extern abstract RenderMode(Int) from Int to Int {
	var ScreenSpaceOverlay;
	var ScreenSpaceCamera;
	var WorldSpace;
}