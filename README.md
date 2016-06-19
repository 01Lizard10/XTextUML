# xtext-uml-Constraint-Example

In diesem Prototyp wurde auf dem vorgegebenen UML-DSL-Projekt von Christians Block aufgebaut:  
[Christians Block](https://christiandietrich.wordpress.com/2011/07/17/xtext-2-0-and-uml/)  

Es wurde die DSL derart angepasst, dass zwei Constraintarten definierbar sind. Außerdem wurde ein Generator mit Xtend implementiert, der aus dem DSL-Modell, zusammen mit einem referenzierten UML-Modell, Java-Code generiert. In dem Generat fließen die definierten Constraints mit ein. Außerdem fließen in dem UML-Modell definierte Defaultwerte mit in dem Generat ein. Das Generat kann mit dem gegebenen Beispiel sofort mit Eclipse ausgeführt werden. Als Ergebnis erscheint ein Formularfeld. Werden durch das Editieren der TextArea-Felder die definierten Constraints verletzt (wie es durch die Startwerte geschieht), werden Fehlermeldungen angezeigt. Mit validen Eingaben ändert verschwindet die Fehlermeldung.

