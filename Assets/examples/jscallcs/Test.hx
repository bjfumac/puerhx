package examples.jscallcs;

import csharp.unityengine.GameObject;
import csharp.unityengine.Debug;

class Test {
	public function new() {}

	public function logMe(msg) {
		Debug.Log(msg);
	}

	public function logGO() {
		var gameObject = new GameObject("testObject");
		Debug.Log(gameObject.name);
	}
}
