package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.ParticleSystemSimulationSpace") @:enum extern abstract ParticleSystemSimulationSpace(Int) from Int to Int {
	var Local;
	var World;
	var Custom;
}