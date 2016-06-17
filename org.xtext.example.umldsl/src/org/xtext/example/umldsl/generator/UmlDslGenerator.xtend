/*
 * generated by Xtext
 */
package org.xtext.example.umldsl.generator

import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.IGenerator
import org.eclipse.xtext.generator.IFileSystemAccess
import java.util.ArrayList
import org.xtext.example.umldsl.umlDsl.PropertyEqualityConstraint
import org.xtext.example.umldsl.umlDsl.NumberRestrictionConstraint

/**
 * Generates code from your model files on save.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#code-generation
 */
class UmlDslGenerator implements IGenerator {

	override void doGenerate(Resource resource, IFileSystemAccess fsa) {
//		fsa.generateFile('greetings.txt', 'People to greet: ' + 
//			resource.allContents
//				.filter(typeof(Greeting))
//				.map[name]
//				.join(', '))
//		for (e : resource.allContents.toIterable.filter(typeof(Class))) {
//			fsa.generateFile("uml-gen/" + e.name + ".java", e.compile)
//		}

		val propList = newArrayList()
		for(prop : resource.allContents.toIterable.filter(typeof(org.xtext.example.umldsl.umlDsl.Property))) {
			propList.add(prop)
		}

//		val ruleList = newArrayList()
//		for(rule : resource.allContents.toIterable.filter(typeof(Rule))) {
//			ruleList.add(rule)
//		}
		val propertyEqualityConstraintList = newArrayList()
		for(x : resource.allContents.toIterable.filter(typeof(org.xtext.example.umldsl.umlDsl.PropertyEqualityConstraint))) {
			propertyEqualityConstraintList.add(x)
		}
		val numberRestrictionConstraint = newArrayList()
		for(x : resource.allContents.toIterable.filter(typeof(org.xtext.example.umldsl.umlDsl.NumberRestrictionConstraint))) {
			numberRestrictionConstraint.add(x)
		}

		fsa.generateFile("umlgen/" + "FormularGenerator" + ".java", genMainApp(
			propList,
			propertyEqualityConstraintList,
			numberRestrictionConstraint
			
		))
	}

	def genMainApp(ArrayList<org.xtext.example.umldsl.umlDsl.Property> propList,
		ArrayList<PropertyEqualityConstraint> propertyEqualityConstraintList,
		ArrayList<NumberRestrictionConstraint> numberRestrictionConstraint
	) {
		'''		
			package umlgen;
			import javax.swing.JFrame;
			import javax.swing.event.DocumentListener;
			import javax.swing.event.DocumentEvent;
			import javax.swing.JTextField;			
			import java.awt.Color;
			import java.awt.GridLayout;			
			import javax.swing.BorderFactory;
			import javax.swing.JLabel;
			import javax.swing.SwingUtilities;
			
			public class FormularGenerator extends JFrame {
			
			private DocumentListener listener = new DocumentListener() {
				public void insertUpdate(DocumentEvent p0) {
				  update();
				}
				public void removeUpdate(DocumentEvent p0) {
				  update();
				}
				public void changedUpdate(DocumentEvent p0) {
				  update();
				}
			};
			
			private JLabel errorLabel = new JLabel("This is a Label");
			private JLabel errorLabel2 = new JLabel("This is also a Label");
			«FOR prop : propList»
			private JTextField ta_«prop.name» = new JTextField();
			«ENDFOR»
			
			
			  public FormularGenerator() {
			    setTitle("A formular");
			    setLayout(new GridLayout(0, 2));
			    			    
	    	«FOR prop : propList»
			ta_«prop.name».getDocument().addDocumentListener(listener);
	   		«ENDFOR»
			
		    «FOR prop : propList»
		    add(new JLabel("«prop.name»: "));
		    add(ta_«prop.name»);
		    //«prop.ref.^default»
		    ta_«prop.name».setText("«prop.ref.^default»");
			«ENDFOR»
				
			    add(errorLabel);
			    add(errorLabel2);
			    errorLabel.setBorder(BorderFactory.createLineBorder(Color.black));
			    errorLabel2.setBorder(BorderFactory.createLineBorder(Color.black));
			    update();
			    setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
			    pack();
			    setVisible(true);
			  }
			// -----------------------------------------------------------------------
			  public void update() {
				 //errorLabel.setText(errorLabel.getText() + "E");
				  
 		    «FOR rule : propertyEqualityConstraintList» 
 		    
 		    «IF rule.equality.equals("!=")»
				if(ta_«rule.leftSite.name».getText().equals(ta_«rule.rightSite.name».getText())){
				  	errorLabel.setText("Error: Rule broken: «rule.leftSite.name» «rule.equality» «rule.rightSite.name»");
				 		    	} else{
				 		    		errorLabel.setText("");
				 		    		}
				«ENDIF»
				«IF rule.equality.equals("==")»
				if(!(ta_«rule.leftSite.name».getText().equals(ta_«rule.rightSite.name».getText()))){
				  	errorLabel.setText("Error: Rule broken: «rule.leftSite.name» «rule.equality» «rule.rightSite.name»");
				 		    	} else{
				 		    		errorLabel.setText("");
				 		    		}
				«ENDIF»
 			«ENDFOR»
			«FOR rule : numberRestrictionConstraint»
			try{
				if(!(Integer.valueOf(ta_«rule.leftSite.name».getText()) «rule.equality»(«rule.rightSite»))){
						errorLabel2.setText("Error: Rule broken: «rule.leftSite.name» «rule.equality» «rule.rightSite»");
					}else{
							errorLabel2.setText("");
						}
					}catch(Exception e){
						errorLabel2.setText("Invalid value for the field: «rule.leftSite.name»; -> «rule.rightSite.class» expected");
					}
			«ENDFOR»
				 
				 }
			
			  public static void main(String[] args) {
			    SwingUtilities.invokeLater(new Runnable() {
			      public void run() {
			        new FormularGenerator();
			      }
			    });
			  }
			}
			'''
	}
}
