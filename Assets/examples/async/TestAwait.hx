package examples.async;

import haxe.Timer;
import js.lib.Promise;
import csharp.unityengine.Debug;
import tink.CoreApi.Future;

@await class TestAwait {
	public function new() {
		processAwait();
	}

	@async function processAwait() {
		Debug.Log("Start");
		var wait = @await waitForIt();
		Debug.Log("End after 5s");
		return wait;
	}

	function waitForIt() {
		return Future.async(function(cb) {
			Timer.delay(function() {
				cb(true);
			}, 5000);
		});
	}
}
