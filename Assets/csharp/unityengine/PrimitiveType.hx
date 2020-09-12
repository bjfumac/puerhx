package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.PrimitiveType") @:enum extern abstract PrimitiveType(Int) from Int to Int {
	var Sphere;
	var Capsule;
	var Cylinder;
	var Cube;
	var Plane;
	var Quad;
}
