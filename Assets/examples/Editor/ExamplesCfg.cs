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
                    typeof(Debug),

                    typeof(Vector3),
                    typeof(List<int>),
                    typeof(Time),
                    typeof(Transform),
                    typeof(Component),
                    typeof(GameObject),
                    typeof(UnityEngine.Object),
                    typeof(Delegate),
                    typeof(System.Object),
                    typeof(Type),
                    typeof(ParticleSystem),
                    typeof(Canvas),
                    typeof(RenderMode),
                    typeof(Behaviour),
                    typeof(MonoBehaviour),

                    typeof(UnityEngine.EventSystems.UIBehaviour),
                    typeof(UnityEngine.UI.Selectable),
                    typeof(UnityEngine.UI.Button),
                    typeof(UnityEngine.UI.Button.ButtonClickedEvent),
                    typeof(UnityEngine.Events.UnityEvent),
                    typeof(UnityEngine.UI.InputField),
                    typeof(UnityEngine.UI.Toggle),
                    typeof(UnityEngine.UI.Toggle.ToggleEvent),
                    typeof(UnityEngine.Events.UnityEvent<bool>),


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