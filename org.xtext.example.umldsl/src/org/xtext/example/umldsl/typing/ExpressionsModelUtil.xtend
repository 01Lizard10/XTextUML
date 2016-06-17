package org.xtext.example.umldsl.typing


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
