using UnityEngine;
using Puerts;
using UnityEngine.UI;

namespace PuerhxTest
{
    public class UI : MonoBehaviour
    {
        JsEnv jsEnv;
        private Canvas tempCanvas;
        private Button tempButton;

        void Start()
        {
            var jsContent = Resources.Load<TextAsset>("ui.js");
            jsEnv = new JsEnv();
            jsEnv.Eval(jsContent.text);
        }

        void OnDestroy()
        {
            jsEnv.Dispose();
        }
    }
}
