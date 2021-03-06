﻿using UnityEngine;
using Puerts;

namespace PuerhxTest
{
    public class JsCallCs : MonoBehaviour
    {
        JsEnv jsEnv;

        void Start()
        {
            var jsContent = Resources.Load<TextAsset>("jscallcs.js");
            jsEnv = new JsEnv();
            jsEnv.Eval(jsContent.text);
        }

        void OnDestroy()
        {
            jsEnv.Dispose();
        }
    }
}
