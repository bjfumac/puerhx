
package csharp.unityengine;
@:jsRequire("csharp", "UnityEngine.Debug") extern class Debug extends csharp.system.Object {
    public function new();
    
	public static var unityLogger:csharp.unityengine.ILogger;
	
	public static var developerConsoleVisible:Bool;
	
	public static var isDebugBuild:Bool;
	
	
        
            
                
            
            
        
            
                
                    @:overload(function(end:csharp.unityengine.Vector3,color:csharp.unityengine.Color
                    ):Void {})
                
            
            
        
            
                
                    @:overload(function(end:csharp.unityengine.Vector3
                    ):Void {})
                
            
            
        
            
                
                    @:overload(function(end:csharp.unityengine.Vector3,color:csharp.unityengine.Color,duration:Float,depthTest:Bool
                    ):Void {})
                
            
            
        
        public static function DrawLine(end:csharp.unityengine.Vector3,color:csharp.unityengine.Color,duration:Float):Void;
    
        
            
                
            
            
        
            
                
                    @:overload(function(dir:csharp.unityengine.Vector3,color:csharp.unityengine.Color
                    ):Void {})
                
            
            
        
            
                
                    @:overload(function(dir:csharp.unityengine.Vector3
                    ):Void {})
                
            
            
        
            
                
                    @:overload(function(dir:csharp.unityengine.Vector3,color:csharp.unityengine.Color,duration:Float,depthTest:Bool
                    ):Void {})
                
            
            
        
        public static function DrawRay(dir:csharp.unityengine.Vector3,color:csharp.unityengine.Color,duration:Float):Void;
    
        
            
                
            
            
        
        public static function Break():Void;
    
        
            
                
            
            
        
        public static function DebugBreak():Void;
    
        
            
                
            
            
        
            
                
                    @:overload(function(context:csharp.unityengine.Object
                    ):Void {})
                
            
            
        
        public static function Log():Void;
    
        
            
                
            
            
        
            
                
                    @:overload(function(format:String,args:Any
                    ):Void {})
                
            
            
        
            
                
                    @:overload(function(logOptions:csharp.unityengine.LogOption,context:csharp.unityengine.Object,format:String,args:Any
                    ):Void {})
                
            
            
        
        public static function LogFormat(args:Any):Void;
    
        
            
                
            
            
        
            
                
                    @:overload(function(context:csharp.unityengine.Object
                    ):Void {})
                
            
            
        
        public static function LogError():Void;
    
        
            
                
            
            
        
            
                
                    @:overload(function(format:String,args:Any
                    ):Void {})
                
            
            
        
        public static function LogErrorFormat(args:Any):Void;
    
        
            
                
            
            
        
        public static function ClearDeveloperConsole():Void;
    
        
            
                
            
            
        
            
                
                    @:overload(function(context:csharp.unityengine.Object
                    ):Void {})
                
            
            
        
        public static function LogException():Void;
    
        
            
                
            
            
        
            
                
                    @:overload(function(context:csharp.unityengine.Object
                    ):Void {})
                
            
            
        
        public static function LogWarning():Void;
    
        
            
                
            
            
        
            
                
                    @:overload(function(format:String,args:Any
                    ):Void {})
                
            
            
        
        public static function LogWarningFormat(args:Any):Void;
    
        
            
                
            
            
        
            
                
                    @:overload(function(context:csharp.unityengine.Object
                    ):Void {})
                
            
                
                    @:overload(function(message:Any
                    ):Void {})
                
            
                
                    @:overload(function(message:String
                    ):Void {})
                
            
            
        
            
                
                    @:overload(function(message:Any,context:csharp.unityengine.Object
                    ):Void {})
                
            
                
                    @:overload(function(message:String,context:csharp.unityengine.Object
                    ):Void {})
                
            
            
        
        public static function Assert():Void;
    
        
            
                
            
            
        
            
                
                    @:overload(function(context:csharp.unityengine.Object,format:String,args:Any
                    ):Void {})
                
            
            
        
        public static function AssertFormat(format:String,args:Any):Void;
    
        
            
                
            
            
        
            
                
                    @:overload(function(context:csharp.unityengine.Object
                    ):Void {})
                
            
            
        
        public static function LogAssertion():Void;
    
        
            
                
            
            
        
            
                
                    @:overload(function(format:String,args:Any
                    ):Void {})
                
            
            
        
        public static function LogAssertionFormat(args:Any):Void;
    
    
    
}
