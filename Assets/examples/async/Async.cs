using System;
using UnityEngine;
using Puerts;

namespace PuerhxTest
{
    public class Async : MonoBehaviour
    {
        JsEnv jsEnv;

        void Start()
        {
            var jsContent = Resources.Load<TextAsset>("async.js");
            jsEnv = new JsEnv();
            jsEnv.Eval(jsContent.text);
        }

        private void Update()
        {
            jsEnv.Tick();
        }

        void OnDestroy()
        {
            jsEnv.Dispose();
        }
    }
}
