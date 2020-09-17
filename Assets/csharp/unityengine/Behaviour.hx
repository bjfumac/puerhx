package csharp.unityengine;

@:jsRequire("csharp", "UnityEngine.Behaviour") extern class Behaviour extends Component {
	public function new();
	public var enabled : Bool;
	public var isActiveAndEnabled : Bool;
	static var prototype : Behaviour;
}