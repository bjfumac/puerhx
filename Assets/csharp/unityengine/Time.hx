package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.Time") extern class Time extends csharp.system.Object {
	public function new();
	static var prototype:Time;
	public static var time:Float;
	public static var timeSinceLevelLoad:Float;
	public static var deltaTime:Float;
	public static var fixedTime:Float;
	public static var unscaledTime:Float;
	public static var fixedUnscaledTime:Float;
	public static var unscaledDeltaTime:Float;
	public static var fixedUnscaledDeltaTime:Float;
	public static var fixedDeltaTime:Float;
	public static var maximumDeltaTime:Float;
	public static var smoothDeltaTime:Float;
	public static var maximumParticleDeltaTime:Float;
	public static var timeScale:Float;
	public static var frameCount:Float;
	public static var renderedFrameCount:Float;
	public static var realtimeSinceStartup:Float;
	public static var captureDeltaTime:Float;
	public static var captureFramerate:Float;
	public static var inFixedTimeStep:Bool;
}
