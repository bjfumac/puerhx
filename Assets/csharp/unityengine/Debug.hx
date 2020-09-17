package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.Debug") extern class Debug extends csharp.system.Object {
	public function new();
	static var prototype : Debug;
	public static var unityLogger : ILogger;
	public static var developerConsoleVisible : Bool;
	public static var isDebugBuild : Bool;
	public static var logger : ILogger;
	@:overload(function(start:Vector3, end:Vector3, color:Color, duration:Float):Void { })
	@:overload(function(start:Vector3, end:Vector3, color:Color):Void { })
	@:overload(function(start:Vector3, end:Vector3):Void { })
	public static function DrawLine(start:Vector3, end:Vector3, color:Color, duration:Float, depthTest:Bool):Void;
	@:overload(function(start:Vector3, dir:Vector3, color:Color):Void { })
	@:overload(function(start:Vector3, dir:Vector3):Void { })
	@:overload(function(start:Vector3, dir:Vector3, color:Color, duration:Float, depthTest:Bool):Void { })
	public static function DrawRay(start:Vector3, dir:Vector3, color:Color, duration:Float):Void;
	public static function Break():Void;
	public static function DebugBreak():Void;
	@:overload(function(message:Dynamic, context:Object):Void { })
	public static function Log(message:Dynamic):Void;
	@:overload(function(context:Object, format:String, args:haxe.extern.Rest<Dynamic>):Void { })
	public static function LogFormat(format:String, args:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(message:Dynamic, context:Object):Void { })
	public static function LogError(message:Dynamic):Void;
	@:overload(function(context:Object, format:String, args:haxe.extern.Rest<Dynamic>):Void { })
	public static function LogErrorFormat(format:String, args:haxe.extern.Rest<Dynamic>):Void;
	public static function ClearDeveloperConsole():Void;
	@:overload(function(exception:csharp.system.Exception, context:Object):Void { })
	public static function LogException(exception:csharp.system.Exception):Void;
	@:overload(function(message:Dynamic, context:Object):Void { })
	public static function LogWarning(message:Dynamic):Void;
	@:overload(function(context:Object, format:String, args:haxe.extern.Rest<Dynamic>):Void { })
	public static function LogWarningFormat(format:String, args:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(condition:Bool, context:Object):Void { })
	@:overload(function(condition:Bool, message:Dynamic):Void { })
	@:overload(function(condition:Bool, message:String):Void { })
	@:overload(function(condition:Bool, message:Dynamic, context:Object):Void { })
	@:overload(function(condition:Bool, message:String, context:Object):Void { })
	public static function Assert(condition:Bool):Void;
	@:overload(function(condition:Bool, context:Object, format:String, args:haxe.extern.Rest<Dynamic>):Void { })
	public static function AssertFormat(condition:Bool, format:String, args:haxe.extern.Rest<Dynamic>):Void;
	@:overload(function(message:Dynamic, context:Object):Void { })
	public static function LogAssertion(message:Dynamic):Void;
	@:overload(function(context:Object, format:String, args:haxe.extern.Rest<Dynamic>):Void { })
	public static function LogAssertionFormat(format:String, args:haxe.extern.Rest<Dynamic>):Void;
}