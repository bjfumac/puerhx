package csharp.system.reflection;

@:jsRequire("csharp", "System.Reflection.TypeAttributes") @:enum extern abstract TypeAttributes(Int) from Int to Int {
	var VisibilityMask;
	var NotPublic;
	var Public;
	var NestedPublic;
	var NestedPrivate;
	var NestedFamily;
	var NestedAssembly;
	var NestedFamANDAssem;
	var NestedFamORAssem;
	var LayoutMask;
	var AutoLayout;
	var SequentialLayout;
	var ExplicitLayout;
	var ClassSemanticsMask;
	var Class;
	var Interface;
	var Abstract;
	var Sealed;
	var SpecialName;
	var Import;
	var Serializable;
	var WindowsRuntime;
	var StringFormatMask;
	var AnsiClass;
	var UnicodeClass;
	var AutoClass;
	var CustomFormatClass;
	var CustomFormatMask;
	var BeforeFieldInit;
	var ReservedMask;
	var RTSpecialName;
	var HasSecurity;
}
