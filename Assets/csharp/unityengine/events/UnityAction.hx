package csharp.unityengine.events;

@:jsRequire("csharp", "UnityEngine.Events.UnityAction") @:forward @:forwardStatics extern abstract UnityAction(() -> Void) from() -> Void to() -> Void {
	function new(func:() -> Void);
}
