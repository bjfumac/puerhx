package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.Transform") extern class Transform extends Component {
	function new();
	public var position : Vector3;
	public var localPosition : Vector3;
	public var eulerAngles : Vector3;
	public var localEulerAngles : Vector3;
	public var right : Vector3;
	public var up : Vector3;
	public var forward : Vector3;
	public var rotation : Quaternion;
	public var localRotation : Quaternion;
	public var localScale : Vector3;
	public var parent : Transform;
	public var worldToLocalMatrix : Matrix4x4;
	public var localToWorldMatrix : Matrix4x4;
	public var root : Transform;
	public var childCount : Float;
	public var lossyScale : Vector3;
	public var hasChanged : Bool;
	public var hierarchyCapacity : Float;
	public var hierarchyCount : Float;
	@:overload(function(parent:Transform, worldPositionStays:Bool):Void { })
	public function SetParent(parent:Transform):Void;
	public function SetPositionAndRotation(position:Vector3, rotation:Quaternion):Void;
	@:overload(function(translation:Vector3, relativeTo:Space):Void { })
	@:overload(function(x:Float, y:Float, z:Float):Void { })
	@:overload(function(x:Float, y:Float, z:Float, relativeTo:Space):Void { })
	@:overload(function(translation:Vector3, relativeTo:Transform):Void { })
	@:overload(function(x:Float, y:Float, z:Float, relativeTo:Transform):Void { })
	public function Translate(translation:Vector3):Void;
	@:overload(function(eulerAngles:Vector3, relativeTo:Space):Void { })
	@:overload(function(xAngle:Float, yAngle:Float, zAngle:Float):Void { })
	@:overload(function(xAngle:Float, yAngle:Float, zAngle:Float, relativeTo:Space):Void { })
	@:overload(function(axis:Vector3, angle:Float):Void { })
	@:overload(function(axis:Vector3, angle:Float, relativeTo:Space):Void { })
	public function Rotate(eulerAngles:Vector3):Void;
	@:overload(function(axis:Vector3, angle:Float):Void { })
	public function RotateAround(point:Vector3, axis:Vector3, angle:Float):Void;
	@:overload(function(target:Transform, worldUp:Vector3):Void { })
	@:overload(function(worldPosition:Vector3, worldUp:Vector3):Void { })
	@:overload(function(worldPosition:Vector3):Void { })
	public function LookAt(target:Transform):Void;
	@:overload(function(x:Float, y:Float, z:Float):Vector3 { })
	public function TransformDirection(direction:Vector3):Vector3;
	@:overload(function(x:Float, y:Float, z:Float):Vector3 { })
	public function InverseTransformDirection(direction:Vector3):Vector3;
	@:overload(function(x:Float, y:Float, z:Float):Vector3 { })
	public function TransformVector(vector:Vector3):Vector3;
	@:overload(function(x:Float, y:Float, z:Float):Vector3 { })
	public function InverseTransformVector(vector:Vector3):Vector3;
	@:overload(function(x:Float, y:Float, z:Float):Vector3 { })
	public function TransformPoint(position:Vector3):Vector3;
	@:overload(function(x:Float, y:Float, z:Float):Vector3 { })
	public function InverseTransformPoint(position:Vector3):Vector3;
	public function DetachChildren():Void;
	public function SetAsFirstSibling():Void;
	public function SetAsLastSibling():Void;
	public function SetSiblingIndex(index:Float):Void;
	public function GetSiblingIndex():Float;
	public function Find(name:String):Transform;
	public function IsChildOf(parent:Transform):Bool;
	public function FindChild(name:String):Transform;
	public function GetEnumerator():csharp.system.collections.IEnumerator;
	public function RotateAroundLocal(axis:Vector3, angle:Float):Void;
	public function GetChild(index:Float):Transform;
	public function GetChildCount():Float;
	static var prototype : Transform;
}