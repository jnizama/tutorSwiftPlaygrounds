/* All parameters passed into a Swift function are constants,
 so you can’t change them. If you want, you can pass in one or more
 parameters as inout, which means they can be changed
 inside your function, and those changes reflect in the
 original value outside the function
*/

import Foundation
/*
func tempToday(cel: Double, fahre: Double){
    fahre = (cel * 1.8) + 32
}
 Si nosotros ejecutamos este función, tendremos este error:

 expression failed to parse:
 error: inoutParameters.xcplaygroundpage:11:5: error: cannot assign to value: 'fahre' is a 'let' constant
     fahre = (cel * 1.8) + 32
     ^~~~~
Reescribiendo:
 */

func tempToday(cel: inout Double, fahre: inout Double){
    fahre = (cel * 1.8) + 32
}
var cels : Double = 14
var fahr : Double = 0

tempToday(cel: &cels, fahre: &fahr)
let tempNow : Double = fahr
print("Today is \(cels) Celsius and \(fahr) Fahrenheit")
