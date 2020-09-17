package csharp.system;

@:jsRequire("csharp", "System.TypeCode") @:enum extern abstract TypeCode(Int) from Int to Int {
	var Empty;
	var Object;
	var DBNull;
	var Boolean;
	var Char;
	var SByte;
	var Byte;
	var Int16;
	var UInt16;
	var Int32;
	var UInt32;
	var Int64;
	var UInt64;
	var Single;
	var Double;
	var Decimal;
	var DateTime;
	var String;
}