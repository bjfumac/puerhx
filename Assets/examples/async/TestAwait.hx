package examples.async;

import haxe.Timer;
import csharp.unityengine.Debug;
import tink.CoreApi.Future;

@await class TestAwait {
	public function new() {
		processAwait();
	}

	@async function processAwait() {
		Debug.Log("Start sleep");
		var wait = @await sleep();
		Debug.Log("Stop sleep after 5s");
		return wait;
	}

	function sleep() {
		return Future.async(function(cb) {
			Timer.delay(function() {
				cb(true);
			}, 5000);
		});
	}
}
