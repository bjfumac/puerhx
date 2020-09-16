using System.Collections.Generic;
using Puerts;
using System;
using UnityEngine;
namespace examples.Editor
{
    [Configure]
    public class ExamplesCfg
    {
        [Binding]
        static IEnumerable<Type> Bindings
        {
            get
            {
                return new List<Type>()
                {
                    typeof(GameObject),


                };
            }
        }

        [BlittableCopy]
        static IEnumerable<Type> Blittables
        {
            get
            {
                return new List<Type>()
                {
                    //打开这个可以优化Vector3的GC，但需要开启unsafe编译
                    //typeof(Vector3),
                };
            }
        }
    }
}