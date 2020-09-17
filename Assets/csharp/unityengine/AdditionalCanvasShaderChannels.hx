package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.AdditionalCanvasShaderChannels") @:enum extern abstract AdditionalCanvasShaderChannels(Int) from Int to Int {
	var None;
	var TexCoord1;
	var TexCoord2;
	var TexCoord3;
	var Normal;
	var Tangent;
}