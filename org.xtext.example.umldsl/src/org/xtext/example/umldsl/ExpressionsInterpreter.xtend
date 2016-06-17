package org.xtext.example.umldsl

import org.xtext.example.umldsl.umlDsl.IntConstant
import org.xtext.example.umldsl.umlDsl.Expression
import org.xtext.example.umldsl.umlDsl.StringConstant
import org.xtext.example.umldsl.umlDsl.BoolConstant
import org.xtext.example.umldsl.umlDsl.And
import org.xtext.example.umldsl.umlDsl.MulOrDiv
import org.xtext.example.umldsl.umlDsl.Plus
import org.xtext.example.umldsl.umlDsl.Variable
import org.xtext.example.umldsl.umlDsl.VariableRef

class ExpressionsInterpreter {
//	@Inject extension ExpressionsTypeProvider
//
//	def dispatch Object interpret(Expression e) {
//		switch (e) {
//			IntConstant:
//				e.value
//			BoolConstant:
//				Boolean::parseBoolean(e.value)
//			StringConstant:
//				e.value
//			And: {
//				(e.left.interpret as Boolean) && (e.right.interpret as Boolean)
//			}
//			Plus: {
//				if (e.left.typeFor.isString || e.right.typeFor.isString)
//					e.left.interpret.toString + e.right.interpret.toString
//				else
//					(e.left.interpret as Integer) + (e.right.interpret as Integer)
//			}
//			MulOrDiv: {
//				val left = e.left.interpret as Integer
//				val right = e.right.interpret as Integer
//				if (e.op == '*')
//					left * right
//				else
//					left / right
//			}
//			VariableRef:
//				e.variable.interpret
//		}
//	}
//
//	def dispatch Object interpret(Variable v) {
//		v.expression.interpret
//	}
}
