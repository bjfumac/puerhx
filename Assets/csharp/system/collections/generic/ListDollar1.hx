package csharp.system.collections.generic;

@:jsRequire("csharp", "System.Collections.Generic.List$1") extern class ListDollar1<T> extends csharp.system.Object {
	@:overload(function<T>(capacity:Float):ListDollar1<T> {})
	@:overload(function<T>(collection:IEnumerableDollar1<T>):ListDollar1<T> {})
	public function new<T>();
	public var Capacity:Float;
	public var Count:Float;
	public var Item:T;
	public function get_Item(index:Float):T;
	public function set_Item(index:Float, value:T):Void;
	public function Add(item:T):Void;
	public function AddRange(collection:IEnumerableDollar1<T>):Void;
	public function AsReadOnly():csharp.system.collections.objectmodel.ReadOnlyCollectionDollar1<T>;
	@:overload(function(item:T):Float {})
	@:overload(function(item:T, comparer:IComparerDollar1<T>):Float {})
	public function BinarySearch(index:Float, count:Float, item:T, comparer:IComparerDollar1<T>):Float;
	public function Clear():Void;
	public function Contains(item:T):Bool;
	@:overload(function(index:Float, array:Array<T>, arrayIndex:Float, count:Float):Void {})
	@:overload(function(array:Array<T>, arrayIndex:Float):Void {})
	public function CopyTo(array:Array<T>):Void;
	public function Exists(match:csharp.system.PredicateDollar1<T>):Bool;
	public function Find(match:csharp.system.PredicateDollar1<T>):T;
	public function FindAll(match:csharp.system.PredicateDollar1<T>):ListDollar1<T>;
	@:overload(function(startIndex:Float, match:csharp.system.PredicateDollar1<T>):Float {})
	@:overload(function(startIndex:Float, count:Float, match:csharp.system.PredicateDollar1<T>):Float {})
	public function FindIndex(match:csharp.system.PredicateDollar1<T>):Float;
	public function FindLast(match:csharp.system.PredicateDollar1<T>):T;
	@:overload(function(startIndex:Float, match:csharp.system.PredicateDollar1<T>):Float {})
	@:overload(function(startIndex:Float, count:Float, match:csharp.system.PredicateDollar1<T>):Float {})
	public function FindLastIndex(match:csharp.system.PredicateDollar1<T>):Float;
	public function ForEach(action:csharp.system.ActionDollar1<T>):Void;
	public function GetEnumerator():csharp.system.collections.generic.listdollar1.Enumerator<T>;
	public function GetRange(index:Float, count:Float):ListDollar1<T>;
	@:overload(function(item:T, index:Float):Float {})
	@:overload(function(item:T, index:Float, count:Float):Float {})
	public function IndexOf(item:T):Float;
	public function Insert(index:Float, item:T):Void;
	public function InsertRange(index:Float, collection:IEnumerableDollar1<T>):Void;
	@:overload(function(item:T, index:Float):Float {})
	@:overload(function(item:T, index:Float, count:Float):Float {})
	public function LastIndexOf(item:T):Float;
	public function Remove(item:T):Bool;
	public function RemoveAll(match:csharp.system.PredicateDollar1<T>):Float;
	public function RemoveAt(index:Float):Void;
	public function RemoveRange(index:Float, count:Float):Void;
	@:overload(function(index:Float, count:Float):Void {})
	public function Reverse():Void;
	@:overload(function(comparer:IComparerDollar1<T>):Void {})
	@:overload(function(index:Float, count:Float, comparer:IComparerDollar1<T>):Void {})
	@:overload(function(comparison:csharp.system.ComparisonDollar1<T>):Void {})
	public function Sort():Void;
	public function ToArray():Array<T>;
	public function TrimExcess():Void;
	public function TrueForAll(match:csharp.system.PredicateDollar1<T>):Bool;
	static var prototype:ListDollar1<Dynamic>;
}
