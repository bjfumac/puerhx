package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.SendMessageOptions") @:enum extern abstract SendMessageOptions(Int) from Int to Int {
	var RequireReceiver;
	var DontRequireReceiver;
}
