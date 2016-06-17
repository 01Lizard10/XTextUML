package org.xtext.example.umldsl.typing

import static extension org.eclipse.emf.ecore.util.EcoreUtil.*
import static extension org.eclipse.xtext.EcoreUtil2.*
import org.xtext.example.umldsl.umlDsl.AbstractElement
import org.xtext.example.umldsl.umlDsl.Variable
import org.xtext.example.umldsl.umlDsl.Rule
import org.eclipse.emf.mwe2.language.mwe2.Assignment
import org.eclipse.emf.ecore.EObject

class ExpressionsModelUtil {
//def static variablesDefinedBefore(AbstractElement e) {
//	val allElements = e.getContainerOfType(typeof(Rule)).elements
//	val containingElement = allElements.findFirst[isAncestor(it, e)]
//	allElements.subList(0, allElements.indexOf(containingElement)).typeSelect(typeof(Variable))
//}

//	def void assertVariablesDefinedBefore(Rule model, int elemIndex, CharSequence expectedVars) {
//		expectedVars.assertEquals(
//			model.elements.get(elemIndex).variablesDefinedBefore.map[name].join(",")
//		)
//	}
//
//override completeAtomic_Variable(EObject elem, Assignment assignment, ContentAssistContext context,
//	ICompletionProposalAcceptor acceptor) {
//	if (!(elem instanceof AbstractElement))
//		return; // no proposal
//	(elem as AbstractElement).variablesDefinedBefore.forEach [ variable |
//		acceptor.accept(createCompletionProposal(variable.name, variable.name + " - Variable", null, context));
//	]
//}
}
