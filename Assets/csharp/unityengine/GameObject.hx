
package csharp.unityengine;
@:jsRequire("csharp", "UnityEngine.GameObject") extern class GameObject extends csharp.unityengine.Object {
    public function new();
    
	public var transform:csharp.unityengine.Transform;
	
	public var layer:Int;
	
	public var activeSelf:Bool;
	
	public var activeInHierarchy:Bool;
	
	public var isStatic:Bool;
	
	public var tag:String;
	
	public var scene:csharp.unityengine.Scene;
	
	public var sceneCullingMask:UInt;
	
	public var gameObject:csharp.unityengine.GameObject;
	
	
        
            
                
            
            
        
        public static function CreatePrimitive(type:csharp.unityengine.PrimitiveType):csharp.unityengine.GameObject;
    
        
            
                
            
                
                    @:overload(function(type:String
                    ):csharp.unityengine.Component {})
                
            
            
        
        public  function GetComponent(type:csharp.system.Type):csharp.unityengine.Component;
    
        
            
                
            
            
        
            
                
                    @:overload(function(type:csharp.system.Type
                    ):csharp.unityengine.Component {})
                
            
            
        
        public  function GetComponentInChildren(type:csharp.system.Type,includeInactive:Bool):csharp.unityengine.Component;
    
        
            
                
            
            
        
        public  function GetComponentInParent(type:csharp.system.Type):csharp.unityengine.Component;
    
        
            
                
            
            
        
            
                
                    @:overload(function(type:csharp.system.Type,results:System.Collections.Generic.List$1<UnityEngine.Component>
                    ):Void {})
                
            
            
        
        public  function GetComponents(type:csharp.system.Type):csharp.unityengine.Component[];
    
        
            
                
            
            
        
            
                
                    @:overload(function(type:csharp.system.Type,includeInactive:Bool
                    ):csharp.unityengine.Component[] {})
                
            
            
        
        public  function GetComponentsInChildren(type:csharp.system.Type):csharp.unityengine.Component[];
    
        
            
                
            
            
        
            
                
                    @:overload(function(type:csharp.system.Type,includeInactive:Bool
                    ):csharp.unityengine.Component[] {})
                
            
            
        
        public  function GetComponentsInParent(type:csharp.system.Type):csharp.unityengine.Component[];
    
        
            
                
            
            
        
        public  function TryGetComponent(type:csharp.system.Type,component:csharp.unityengine.Component):Bool;
    
        
            
                
            
            
        
        public static function FindWithTag(tag:String):csharp.unityengine.GameObject;
    
        
            
                
            
                
                    @:overload(function(methodName:String,value:Any
                    ):Void {})
                
            
            
        
            
                
                    @:overload(function(methodName:String,value:Any,options:csharp.unityengine.SendMessageOptions
                    ):Void {})
                
            
            
        
            
                
                    @:overload(function(methodName:String
                    ):Void {})
                
            
            
        
        public  function SendMessageUpwards(methodName:String,options:csharp.unityengine.SendMessageOptions):Void;
    
        
            
                
            
                
                    @:overload(function(methodName:String,value:Any
                    ):Void {})
                
            
            
        
            
                
                    @:overload(function(methodName:String,value:Any,options:csharp.unityengine.SendMessageOptions
                    ):Void {})
                
            
            
        
            
                
                    @:overload(function(methodName:String
                    ):Void {})
                
            
            
        
        public  function SendMessage(methodName:String,options:csharp.unityengine.SendMessageOptions):Void;
    
        
            
                
            
                
                    @:overload(function(methodName:String,parameter:Any
                    ):Void {})
                
            
            
        
            
                
                    @:overload(function(methodName:String,parameter:Any,options:csharp.unityengine.SendMessageOptions
                    ):Void {})
                
            
            
        
            
                
                    @:overload(function(methodName:String
                    ):Void {})
                
            
            
        
        public  function BroadcastMessage(methodName:String,options:csharp.unityengine.SendMessageOptions):Void;
    
        
            
                
            
            
        
        public  function AddComponent(componentType:csharp.system.Type):csharp.unityengine.Component;
    
        
            
                
            
            
        
        public  function SetActive(value:Bool):Void;
    
        
            
                
            
            
        
        public  function CompareTag(tag:String):Bool;
    
        
            
                
            
            
        
        public static function FindGameObjectWithTag(tag:String):csharp.unityengine.GameObject;
    
        
            
                
            
            
        
        public static function FindGameObjectsWithTag(tag:String):csharp.unityengine.GameObject[];
    
        
            
                
            
            
        
        public static function Find(name:String):csharp.unityengine.GameObject;
    
    
    
}
