package csharp.system.reflection;

@:jsRequire("csharp", "System.Reflection.GenericParameterAttributes") @:enum extern abstract GenericParameterAttributes(Int) from Int to Int {
	var None;
	var VarianceMask;
	var Covariant;
	var Contravariant;
	var SpecialConstraintMask;
	var ReferenceTypeConstraint;
	var NotNullableValueTypeConstraint;
	var DefaultConstructorConstraint;
}
