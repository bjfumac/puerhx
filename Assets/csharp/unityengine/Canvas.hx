package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.Canvas") extern class Canvas extends Behaviour {
	public function new();
	public var renderMode : RenderMode;
	public var isRootCanvas : Bool;
	public var worldCamera : Camera;
	public var pixelRect : Rect;
	public var scaleFactor : Float;
	public var referencePixelsPerUnit : Float;
	public var overridePixelPerfect : Bool;
	public var pixelPerfect : Bool;
	public var planeDistance : Float;
	public var renderOrder : Float;
	public var overrideSorting : Bool;
	public var sortingOrder : Float;
	public var targetDisplay : Float;
	public var sortingGridNormalizedSize : Float;
	public var normalizedSortingGridSize : Float;
	public var sortingLayerID : Float;
	public var cachedSortingLayerValue : Float;
	public var additionalShaderChannels : AdditionalCanvasShaderChannels;
	public var sortingLayerName : String;
	public var rootCanvas : Canvas;
	static var prototype : Canvas;
	public static function GetDefaultCanvasMaterial():Material;
	public static function GetETC1SupportedCanvasMaterial():Material;
	public static function GetDefaultCanvasTextMaterial():Material;
	public static function add_willRenderCanvases(value:csharp.unityengine.canvas.WillRenderCanvases):Void;
	public static function remove_willRenderCanvases(value:csharp.unityengine.canvas.WillRenderCanvases):Void;
	public static function ForceUpdateCanvases():Void;
}