package csharp.unityengine.ui;

@:jsRequire("csharp", "UnityEngine.UI.CanvasUpdate") @:enum extern abstract CanvasUpdate(Int) from Int to Int {
	var Prelayout;
	var Layout;
	var PostLayout;
	var PreRender;
	var LatePreRender;
	var MaxUpdateValue;
}