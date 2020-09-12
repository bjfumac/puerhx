package examples.overloads;

import csharp.unityengine.Debug;
import csharp.unityengine.Vector3;

class Test {
	public function new() {
		var v:OLVector3 = new Vector3(1, 2, 3);
		Debug.Log(v * 3);
	}
}
