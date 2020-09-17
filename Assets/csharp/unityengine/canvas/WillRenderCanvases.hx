package csharp.unityengine.canvas;

@:jsRequire("csharp", "UnityEngine.Canvas.WillRenderCanvases") @:forward @:forwardStatics extern abstract WillRenderCanvases(() -> Void) from () -> Void to () -> Void {
	function new(func:() -> Void);
}