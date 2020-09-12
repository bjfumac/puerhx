package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.LogType") @:enum extern abstract LogType(Int) from Int to Int {
	var Error;
	var Assert;
	var Warning;
	var Log;
	var Exception;
}
