/* Example how use generics*/

import Foundation

class Car<T>
{
    func ShowModel(name: T){
        print("El modelo de este auto es: \(name)")
    }
}

enum Auto { case Audi, Toyota, Nissan, Wolkswage, Dodge}


let myCar = Car<Auto>()
myCar.ShowModel(name: Auto.Nissan)

/* Other example */

func interchangeValue<T>( a : T){
    print("The value is \(a)")
}
let title = "This is a compendiumg"
interchangeValue(a: title)

let PI : Double = 3.1416
interchangeValue(a: PI)

let myAge = 41
interchangeValue(a: myAge)


