package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.LogOption") @:enum extern abstract LogOption(Int) from Int to Int {
	var None;
	var NoStacktrace;
}
