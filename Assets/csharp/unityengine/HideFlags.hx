package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.HideFlags") @:enum extern abstract HideFlags(Int) from Int to Int {
	var None;
	var HideInHierarchy;
	var HideInInspector;
	var DontSaveInEditor;
	var NotEditable;
	var DontSaveInBuild;
	var DontUnloadUnusedAsset;
	var DontSave;
	var HideAndDontSave;
}
