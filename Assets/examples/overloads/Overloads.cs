using UnityEngine;
using Puerts;

namespace PuerhxTest
{
    public class Overloads : MonoBehaviour
    {
        JsEnv jsEnv;

        void Start()
        {
            var jsContent = Resources.Load<TextAsset>("overloads.js");
            jsEnv = new JsEnv();
            jsEnv.Eval(jsContent.text);
        }

        void OnDestroy()
        {
            jsEnv.Dispose();
        }
    }
}
