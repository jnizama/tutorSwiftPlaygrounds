import Foundation
import UIKit

public class Person : NSObject{
    
   //Podemos crear INICIALIZADORES por padron o inicializados por conveniencia
   //Designated Initializers and Convenience Initializers
   
    //Designated Initializers cubren todos los parametros, son como el embudo or funnel
    //y la inicializacion continua hasta la clase superior o padre.
    //Cada clase debe tener al menos una de estos inicializadores.

    init(param1: String) {
        print("Hello Person \(param1)")
    }
    //Convenience Initializers son secundarios y llaman a Designated Initializers
    //Son opcionales.
    //Create convenience initializers whenever a shortcut to a common initialization pattern
    //will save time or make initialization of the class clearer in intent.
    convenience public override init() {
        self.init(param1 : "Alexa")
    }
    
}
