package examples.ui;

import csharp.unityengine.GameObject;
import csharp.unityengine.Debug;
import csharp.unityengine.ui.Button.Button;
import csharp.puerts.Puerts;

class Test {
	public function new() {
		createUI();
	}

	public function createUI() {
		var btnGO = GameObject.Find("Button");
		var btn:Button = cast btnGO.AddComponent(Puerts.$typeof(Button));
		btn.onClick.AddListener(() -> {
			Debug.Log("clicked");
		});
	}
}
