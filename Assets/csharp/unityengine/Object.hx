
package csharp.unityengine;
@:jsRequire("csharp", "UnityEngine.Object") extern class Object extends csharp.system.Object {
    public function new();
    
	public var name:String;
	
	public var hideFlags:csharp.unityengine.HideFlags;
	
	
        
            
                
            
            
        
        public  function GetInstanceID():Int;
    
        
            
                
            
            
        
        public  function GetHashCode():Int;
    
        
            
                
            
            
        
        public  function Equals():Bool;
    
        
            
                
            
                
                    @:overload(function(parent:csharp.unityengine.Transform,instantiateInWorldSpace:Bool
                    ):csharp.unityengine.Object {})
                
            
            
        
            
                
                    @:overload(function(position:csharp.unityengine.Vector3,rotation:csharp.unityengine.Quaternion,parent:csharp.unityengine.Transform
                    ):csharp.unityengine.Object {})
                
            
            
        
            
                
                    @:overload(function(
                    ):csharp.unityengine.Object {})
                
            
            
        
            
                
                    @:overload(function(parent:csharp.unityengine.Transform
                    ):csharp.unityengine.Object {})
                
            
            
        
        public static function Instantiate(position:csharp.unityengine.Vector3,rotation:csharp.unityengine.Quaternion):csharp.unityengine.Object;
    
        
            
                
            
            
        
            
                
                    @:overload(function(
                    ):Void {})
                
            
            
        
        public static function Destroy(t:Float):Void;
    
        
            
                
            
            
        
            
                
                    @:overload(function(
                    ):Void {})
                
            
            
        
        public static function DestroyImmediate(allowDestroyingAssets:Bool):Void;
    
        
            
                
            
            
        
        public static function FindObjectsOfType():csharp.unityengine.Object[];
    
        
            
                
            
            
        
        public static function DontDestroyOnLoad():Void;
    
        
            
                
            
            
        
        public static function FindObjectOfType():csharp.unityengine.Object;
    
        
            
                
            
            
        
        public  function ToString():String;
    
    
    
}
