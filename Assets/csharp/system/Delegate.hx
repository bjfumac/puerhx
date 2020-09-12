package csharp.system;

@:jsRequire("csharp", "System.Delegate") extern class Delegate extends Object {
	function new();
	public var Method:csharp.system.reflection.MethodInfo;
	public var Target:Dynamic;
	public function DynamicInvoke(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function Clone():Dynamic;
	public function GetObjectData(info:csharp.system.runtime.serialization.SerializationInfo,
		context:csharp.system.runtime.serialization.StreamingContext):Void;
	public function GetInvocationList():Array<haxe.Constraints.Function>;
	static var prototype:Delegate;
	@:overload(function(type:Type_, firstArgument:Dynamic, method:csharp.system.reflection.MethodInfo):haxe.Constraints.Function {})
	@:overload(function(type:Type_, method:csharp.system.reflection.MethodInfo, throwOnBindFailure:Bool):haxe.Constraints.Function {})
	@:overload(function(type:Type_, method:csharp.system.reflection.MethodInfo):haxe.Constraints.Function {})
	@:overload(function(type:Type_, target:Dynamic, method:String):haxe.Constraints.Function {})
	@:overload(function(type:Type_, target:Type_, method:String, ignoreCase:Bool, throwOnBindFailure:Bool):haxe.Constraints.Function {})
	@:overload(function(type:Type_, target:Type_, method:String):haxe.Constraints.Function {})
	@:overload(function(type:Type_, target:Type_, method:String, ignoreCase:Bool):haxe.Constraints.Function {})
	@:overload(function(type:Type_, target:Dynamic, method:String, ignoreCase:Bool, throwOnBindFailure:Bool):haxe.Constraints.Function {})
	@:overload(function(type:Type_, target:Dynamic, method:String, ignoreCase:Bool):haxe.Constraints.Function {})
	public static function CreateDelegate(type:Type_, firstArgument:Dynamic, method:csharp.system.reflection.MethodInfo,
		throwOnBindFailure:Bool):haxe.Constraints.Function;
	@:overload(function(delegates:haxe.extern.Rest<haxe.Constraints.Function>):haxe.Constraints.Function {})
	public static function Combine(a:haxe.Constraints.Function, b:haxe.Constraints.Function):haxe.Constraints.Function;
	public static function Remove(source:haxe.Constraints.Function, value:haxe.Constraints.Function):haxe.Constraints.Function;
	public static function RemoveAll(source:haxe.Constraints.Function, value:haxe.Constraints.Function):haxe.Constraints.Function;
	public static function op_Equality(d1:haxe.Constraints.Function, d2:haxe.Constraints.Function):Bool;
	public static function op_Inequality(d1:haxe.Constraints.Function, d2:haxe.Constraints.Function):Bool;
}
