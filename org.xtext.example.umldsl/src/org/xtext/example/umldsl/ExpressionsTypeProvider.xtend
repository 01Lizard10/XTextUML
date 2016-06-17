package org.xtext.example.umldsl


class ExpressionsTypeProvider {
//	public static val stringType = new StringType
//	public static val intType = new IntType
//	public static val boolType = new BoolType
//
//	def dispatch Rule typeFor(Expression e) {
//	
//		switch (e) {
//			StringConstant: stringType
//			IntConstant: intType
//			BoolConstant: boolType
//			Not: boolType
//			MulOrDiv: intType
//			Minus: intType
//			Comparison: boolType
//			Equality: boolType
//			And: boolType
//			Or: boolType
//		}
//	}
//
//	def dispatch Rule typeFor(Plus e) {
//		val leftType = e.left?.typeFor
//		val rightType = e.right?.typeFor
//		if (leftType == stringType || rightType == stringType)
//			stringType
//		else
//			intType
//	}
//
//	def dispatch Rule typeFor(VariableRef varRef) {
//		if (varRef.variable == null || !(varRef.variablesDefinedBefore.contains(varRef.variable)))
//			return null
//		else
//			return varRef.variable.expression?.typeFor
//	}
}
