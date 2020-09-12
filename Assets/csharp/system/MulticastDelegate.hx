package csharp.system;

@:jsRequire("csharp", "System.MulticastDelegate") @:forward @:forwardStatics extern abstract MulticastDelegate((args:haxe.extern.Rest<Dynamic>) -> Dynamic)
	from(args:haxe.extern.Rest<Dynamic>) -> Dynamic to(args:haxe.extern.Rest<Dynamic>) -> Dynamic {
	function new(func:(args:haxe.extern.Rest<Dynamic>) -> Dynamic);
}
