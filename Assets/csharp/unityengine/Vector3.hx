package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.Vector3") extern class Vector3 extends csharp.system.ValueType {
	@:overload(function(x:Float, y:Float):Vector3 { })
	public function new(x:Float, y:Float, z:Float);
	public var x : Float;
	public var y : Float;
	public var z : Float;
	public var Item : Float;
	public var normalized : Vector3;
	public var magnitude : Float;
	public var sqrMagnitude : Float;
	public function get_Item(index:Float):Float;
	public function set_Item(index:Float, value:Float):Void;
	public function Set(newX:Float, newY:Float, newZ:Float):Void;
	public function Scale(scale:Vector3):Void;
	public function GetHashCode():Float;
	public function Equals(other:Dynamic):Bool;
	public function Normalize():Void;
	@:overload(function(format:String):String { })
	public function ToString():String;
	static var prototype : Vector3;
	public static var kEpsilon : Float;
	public static var zero : Vector3;
	public static var one : Vector3;
	public static var forward : Vector3;
	public static var back : Vector3;
	public static var up : Vector3;
	public static var down : Vector3;
	public static var left : Vector3;
	public static var right : Vector3;
	public static var positiveInfinity : Vector3;
	public static var negativeInfinity : Vector3;
	public static var fwd : Vector3;
	public static function Slerp(a:Vector3, b:Vector3, t:Float):Vector3;
	public static function SlerpUnclamped(a:Vector3, b:Vector3, t:Float):Vector3;
	@:overload(function(normal:csharp.DollarRef<Vector3>, tangent:csharp.DollarRef<Vector3>, binormal:csharp.DollarRef<Vector3>):Void { })
	public static function OrthoNormalize(normal:csharp.DollarRef<Vector3>, tangent:csharp.DollarRef<Vector3>):Void;
	public static function RotateTowards(current:Vector3, target:Vector3, maxRadiansDelta:Float, maxMagnitudeDelta:Float):Vector3;
	public static function Exclude(excludeThis:Vector3, fromThat:Vector3):Vector3;
	public static function Lerp(a:Vector3, b:Vector3, t:Float):Vector3;
	public static function LerpUnclamped(a:Vector3, b:Vector3, t:Float):Vector3;
	public static function MoveTowards(current:Vector3, target:Vector3, maxDistanceDelta:Float):Vector3;
	@:overload(function(current:Vector3, target:Vector3, currentVelocity:csharp.DollarRef<Vector3>, smoothTime:Float):Vector3 { })
	@:overload(function(current:Vector3, target:Vector3, currentVelocity:csharp.DollarRef<Vector3>, smoothTime:Float, maxSpeed:Float, deltaTime:Float):Vector3 { })
	public static function SmoothDamp(current:Vector3, target:Vector3, currentVelocity:csharp.DollarRef<Vector3>, smoothTime:Float, maxSpeed:Float):Vector3;
	@:native("Scale")
	public static function Scale_(a:Vector3, b:Vector3):Vector3;
	public static function Cross(lhs:Vector3, rhs:Vector3):Vector3;
	public static function Reflect(inDirection:Vector3, inNormal:Vector3):Vector3;
	@:native("Normalize")
	public static function Normalize_(value:Vector3):Vector3;
	public static function Dot(lhs:Vector3, rhs:Vector3):Float;
	public static function Project(vector:Vector3, onNormal:Vector3):Vector3;
	public static function ProjectOnPlane(vector:Vector3, planeNormal:Vector3):Vector3;
	public static function Angle(from:Vector3, to:Vector3):Float;
	public static function SignedAngle(from:Vector3, to:Vector3, axis:Vector3):Float;
	public static function Distance(a:Vector3, b:Vector3):Float;
	public static function ClampMagnitude(vector:Vector3, maxLength:Float):Vector3;
	public static function Magnitude(vector:Vector3):Float;
	public static function SqrMagnitude(vector:Vector3):Float;
	public static function Min(lhs:Vector3, rhs:Vector3):Vector3;
	public static function Max(lhs:Vector3, rhs:Vector3):Vector3;
	public static function op_Addition(a:Vector3, b:Vector3):Vector3;
	public static function op_Subtraction(a:Vector3, b:Vector3):Vector3;
	public static function op_UnaryNegation(a:Vector3):Vector3;
	@:overload(function(d:Float, a:Vector3):Vector3 { })
	public static function op_Multiply(a:Vector3, d:Float):Vector3;
	public static function op_Division(a:Vector3, d:Float):Vector3;
	public static function op_Equality(lhs:Vector3, rhs:Vector3):Bool;
	public static function op_Inequality(lhs:Vector3, rhs:Vector3):Bool;
	public static function AngleBetween(from:Vector3, to:Vector3):Float;
}