package examples.overloads;

import csharp.unityengine.Vector3;

abstract OLVector3(Vector3) from Vector3 {
	public inline function new(lhs:Vector3) {
		this = lhs;
	}

	@:op(A * B)
	public function repeat(rhs:Float):Vector3 {
		// todo: Vector3现在还不能单独给xyz赋值
		return new Vector3(this.x * rhs, this.y * rhs, this.z * rhs);
	}
}
