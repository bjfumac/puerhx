package csharp.system.reflection;

@:jsRequire("csharp", "System.Reflection.GenericParameterAttributes") @:enum extern abstract GenericParameterAttributes(Int) from Int to Int {
	var Covariant;
	var Contravariant;
	var VarianceMask;
	var None;
	var ReferenceTypeConstraint;
	var NotNullableValueTypeConstraint;
	var DefaultConstructorConstraint;
	var SpecialConstraintMask;
}