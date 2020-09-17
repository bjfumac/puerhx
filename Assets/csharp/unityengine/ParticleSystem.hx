package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.ParticleSystem") extern class ParticleSystem extends Component {
	public function new();
	public var startDelay : Float;
	public var isPlaying : Bool;
	public var isEmitting : Bool;
	public var isStopped : Bool;
	public var isPaused : Bool;
	public var loop : Bool;
	public var playOnAwake : Bool;
	public var time : Float;
	public var duration : Float;
	public var playbackSpeed : Float;
	public var particleCount : Float;
	public var enableEmission : Bool;
	public var emissionRate : Float;
	public var startSpeed : Float;
	public var startSize : Float;
	public var startColor : Color;
	public var startRotation : Float;
	public var startRotation3D : Vector3;
	public var startLifetime : Float;
	public var gravityModifier : Float;
	public var maxParticles : Float;
	public var simulationSpace : ParticleSystemSimulationSpace;
	public var scalingMode : ParticleSystemScalingMode;
	public var randomSeed : Float;
	public var useAutoRandomSeed : Bool;
	public var main : csharp.unityengine.particlesystem.MainModule;
	public var emission : csharp.unityengine.particlesystem.EmissionModule;
	public var shape : csharp.unityengine.particlesystem.ShapeModule;
	public var velocityOverLifetime : csharp.unityengine.particlesystem.VelocityOverLifetimeModule;
	public var limitVelocityOverLifetime : csharp.unityengine.particlesystem.LimitVelocityOverLifetimeModule;
	public var inheritVelocity : csharp.unityengine.particlesystem.InheritVelocityModule;
	public var forceOverLifetime : csharp.unityengine.particlesystem.ForceOverLifetimeModule;
	public var colorOverLifetime : csharp.unityengine.particlesystem.ColorOverLifetimeModule;
	public var colorBySpeed : csharp.unityengine.particlesystem.ColorBySpeedModule;
	public var sizeOverLifetime : csharp.unityengine.particlesystem.SizeOverLifetimeModule;
	public var sizeBySpeed : csharp.unityengine.particlesystem.SizeBySpeedModule;
	public var rotationOverLifetime : csharp.unityengine.particlesystem.RotationOverLifetimeModule;
	public var rotationBySpeed : csharp.unityengine.particlesystem.RotationBySpeedModule;
	public var externalForces : csharp.unityengine.particlesystem.ExternalForcesModule;
	public var noise : csharp.unityengine.particlesystem.NoiseModule;
	public var collision : csharp.unityengine.particlesystem.CollisionModule;
	public var trigger : csharp.unityengine.particlesystem.TriggerModule;
	public var subEmitters : csharp.unityengine.particlesystem.SubEmittersModule;
	public var textureSheetAnimation : csharp.unityengine.particlesystem.TextureSheetAnimationModule;
	public var lights : csharp.unityengine.particlesystem.LightsModule;
	public var trails : csharp.unityengine.particlesystem.TrailModule;
	public var customData : csharp.unityengine.particlesystem.CustomDataModule;
	public var safeCollisionEventSize : Float;
	public function SetParticles(particles:Array<csharp.unityengine.particlesystem.Particle>, size:Float):Void;
	public function GetParticles(particles:Array<csharp.unityengine.particlesystem.Particle>):Float;
	public function SetCustomParticleData(customData:csharp.system.collections.generic.ListDollar1<Vector4>, streamIndex:ParticleSystemCustomData):Void;
	public function GetCustomParticleData(customData:csharp.system.collections.generic.ListDollar1<Vector4>, streamIndex:ParticleSystemCustomData):Float;
	@:overload(function(t:Float, withChildren:Bool, restart:Bool):Void { })
	@:overload(function(t:Float, withChildren:Bool):Void { })
	@:overload(function(t:Float):Void { })
	public function Simulate(t:Float, withChildren:Bool, restart:Bool, fixedTimeStep:Bool):Void;
	@:overload(function():Void { })
	public function Play(withChildren:Bool):Void;
	@:overload(function():Void { })
	public function Pause(withChildren:Bool):Void;
	@:overload(function(withChildren:Bool):Void { })
	@:overload(function():Void { })
	public function Stop(withChildren:Bool, stopBehavior:ParticleSystemStopBehavior):Void;
	@:overload(function():Void { })
	public function Clear(withChildren:Bool):Void;
	@:overload(function():Bool { })
	public function IsAlive(withChildren:Bool):Bool;
	@:overload(function(position:Vector3, velocity:Vector3, size:Float, lifetime:Float, color:Color32):Void { })
	@:overload(function(particle:csharp.unityengine.particlesystem.Particle):Void { })
	@:overload(function(emitParams:csharp.unityengine.particlesystem.EmitParams, count:Float):Void { })
	public function Emit(count:Float):Void;
	static var prototype : ParticleSystem;
	public static function EnableMeshNonUniformScaleFix(enabled:Bool):Void;
}