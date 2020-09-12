package examples.async;

import csharp.unityengine.Debug;
import js.lib.Promise;

class TestPromise {
	public function new() {
		var p:Promise<String> = createPromise();
		p.then((res) -> {
			Debug.Log(res);
		});
	}

	private function createPromise():Promise<String> {
		var promise = new Promise((resolve, reject) -> {
			resolve("promise resolved");
		});
		return promise;
	}
}
