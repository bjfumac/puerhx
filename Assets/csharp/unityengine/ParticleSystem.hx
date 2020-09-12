package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.ParticleSystem") extern class ParticleSystem extends Component {
	public function new();
	public var isPlaying:Bool;
	public var isEmitting:Bool;
	public var isStopped:Bool;
	public var isPaused:Bool;
	public var particleCount:Float;
	public var time:Float;
	public var randomSeed:Float;
	public var useAutoRandomSeed:Bool;
	public var proceduralSimulationSupported:Bool;
	public var main:csharp.unityengine.particlesystem.MainModule;
	public var emission:csharp.unityengine.particlesystem.EmissionModule;
	public var shape:csharp.unityengine.particlesystem.ShapeModule;
	public var velocityOverLifetime:csharp.unityengine.particlesystem.VelocityOverLifetimeModule;
	public var limitVelocityOverLifetime:csharp.unityengine.particlesystem.LimitVelocityOverLifetimeModule;
	public var inheritVelocity:csharp.unityengine.particlesystem.InheritVelocityModule;
	public var forceOverLifetime:csharp.unityengine.particlesystem.ForceOverLifetimeModule;
	public var colorOverLifetime:csharp.unityengine.particlesystem.ColorOverLifetimeModule;
	public var colorBySpeed:csharp.unityengine.particlesystem.ColorBySpeedModule;
	public var sizeOverLifetime:csharp.unityengine.particlesystem.SizeOverLifetimeModule;
	public var sizeBySpeed:csharp.unityengine.particlesystem.SizeBySpeedModule;
	public var rotationOverLifetime:csharp.unityengine.particlesystem.RotationOverLifetimeModule;
	public var rotationBySpeed:csharp.unityengine.particlesystem.RotationBySpeedModule;
	public var externalForces:csharp.unityengine.particlesystem.ExternalForcesModule;
	public var noise:csharp.unityengine.particlesystem.NoiseModule;
	public var collision:csharp.unityengine.particlesystem.CollisionModule;
	public var trigger:csharp.unityengine.particlesystem.TriggerModule;
	public var subEmitters:csharp.unityengine.particlesystem.SubEmittersModule;
	public var textureSheetAnimation:csharp.unityengine.particlesystem.TextureSheetAnimationModule;
	public var lights:csharp.unityengine.particlesystem.LightsModule;
	public var trails:csharp.unityengine.particlesystem.TrailModule;
	public var customData:csharp.unityengine.particlesystem.CustomDataModule;
	@:overload(function(particles:Array<csharp.unityengine.particlesystem.Particle>, size:Float):Void {})
	@:overload(function(particles:Array<csharp.unityengine.particlesystem.Particle>):Void {})
	@:overload(function(particles:csharp.unity.collections.NativeArrayDollar1<csharp.unityengine.particlesystem.Particle>, size:Float, offset:Float):Void {})
	@:overload(function(particles:csharp.unity.collections.NativeArrayDollar1<csharp.unityengine.particlesystem.Particle>, size:Float):Void {})
	@:overload(function(particles:csharp.unity.collections.NativeArrayDollar1<csharp.unityengine.particlesystem.Particle>):Void {})
	public function SetParticles(particles:Array<csharp.unityengine.particlesystem.Particle>, size:Float, offset:Float):Void;
	@:overload(function(particles:Array<csharp.unityengine.particlesystem.Particle>, size:Float):Float {})
	@:overload(function(particles:Array<csharp.unityengine.particlesystem.Particle>):Float {})
	@:overload(function(particles:csharp.unity.collections.NativeArrayDollar1<csharp.unityengine.particlesystem.Particle>, size:Float, offset:Float):Float {})
	@:overload(function(particles:csharp.unity.collections.NativeArrayDollar1<csharp.unityengine.particlesystem.Particle>, size:Float):Float {})
	@:overload(function(particles:csharp.unity.collections.NativeArrayDollar1<csharp.unityengine.particlesystem.Particle>):Float {})
	public function GetParticles(particles:Array<csharp.unityengine.particlesystem.Particle>, size:Float, offset:Float):Float;
	public function SetCustomParticleData(customData:csharp.system.collections.generic.ListDollar1<Vector4>, streamIndex:ParticleSystemCustomData):Void;
	public function GetCustomParticleData(customData:csharp.system.collections.generic.ListDollar1<Vector4>, streamIndex:ParticleSystemCustomData):Float;
	public function GetPlaybackState():csharp.unityengine.particlesystem.PlaybackState;
	public function SetPlaybackState(playbackState:csharp.unityengine.particlesystem.PlaybackState):Void;
	public function GetTrails():csharp.unityengine.particlesystem.Trails;
	public function SetTrails(trailData:csharp.unityengine.particlesystem.Trails):Void;
	@:overload(function(t:Float, withChildren:Bool, restart:Bool):Void {})
	@:overload(function(t:Float, withChildren:Bool):Void {})
	@:overload(function(t:Float):Void {})
	public function Simulate(t:Float, withChildren:Bool, restart:Bool, fixedTimeStep:Bool):Void;
	@:overload(function():Void {})
	public function Play(withChildren:Bool):Void;
	@:overload(function():Void {})
	public function Pause(withChildren:Bool):Void;
	@:overload(function(withChildren:Bool):Void {})
	@:overload(function():Void {})
	public function Stop(withChildren:Bool, stopBehavior:ParticleSystemStopBehavior):Void;
	@:overload(function():Void {})
	public function Clear(withChildren:Bool):Void;
	@:overload(function():Bool {})
	public function IsAlive(withChildren:Bool):Bool;
	@:overload(function(emitParams:csharp.unityengine.particlesystem.EmitParams, count:Float):Void {})
	public function Emit(count:Float):Void;
	@:overload(function(subEmitterIndex:Float, particle:csharp.DollarRef<csharp.unityengine.particlesystem.Particle>):Void {})
	@:overload(function(subEmitterIndex:Float, particles:csharp.system.collections.generic.ListDollar1<csharp.unityengine.particlesystem.Particle>):Void {})
	public function TriggerSubEmitter(subEmitterIndex:Float):Void;
	static var prototype:ParticleSystem;
	public static function ResetPreMappedBufferMemory():Void;
}
