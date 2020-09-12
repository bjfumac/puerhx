package csharp.puerts;

import csharp.system.Type_;

@:jsRequire("puerts") extern class Puerts {
	static function $typeof(t : Any):Type_;
	static function $ref<T>(x : T):DollarRef<T>;
	static function $generic<T>(genericType : T, genericArguments : Any):T;
}
