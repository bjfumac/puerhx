package examples.async;

import haxe.Int32;
import haxe.Timer;
import csharp.unityengine.Debug;

class TestInterval {
	private var counter:Int32 = 0;
	private var timer:Timer;

	public function new() {
		// delay invoke
		Timer.delay(() -> {
			Debug.Log("Delay 1s");
		}, 1000);
		// interval invoke
		timer = new Timer(2000);
		timer.run = () -> {
			counter++;
			Debug.Log('Interval ${counter}s');
			if (counter == 6) {
				Debug.Log("Stop Interval after 6s");
				timer.stop();
			}
		};
	}
}
