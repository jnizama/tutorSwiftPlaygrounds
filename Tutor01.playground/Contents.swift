import UIKit


//Constants
let strCentury = "Siglo 21"
let intCentury = 21
let generalTax = 18


//Variables
var strComputer = "My Computer 01"

//Arrays

var countries = ["Japan", "Corea", "Tunes", "Argelia", "Afaganistan"]
var irracionalNumber = [Double]() //Los parantesis indica que llamamos a un metodo inicializador
let fruits = ["Apple", "Banana", "Stranberri", "Orange" ]

for fruit in fruits {
    print(fruit)
}

irracionalNumber.append(3.1416)
irracionalNumber.append(2.71)
irracionalNumber.append(9.8)

print(irracionalNumber[0]) //print the first position
//adding new countries
countries.append("Bolivia")
countries.remove(at: 2) //remove tunes
countries.removeLast() //remove Bolivia
for country in countries{
    print(country)
}
irracionalNumber.removeAll(keepingCapacity: false)
//Tupples
let coletion01 = (strCentury, strComputer, fruits, intCentury)
let coletion02 = ("Jazz", "Salsa", "Caporeia", 123, 34.45, false)

//When execute print(coletion01)
//Show:
//  ("Siglo 21", "My Computer 01", ["Apple", "Banana", "Stranberri", "Orange"], 21)

//coletion or tuples with names
let coletion03 = (Object1 : "Jazz", Object2: "Salsa", Object3: 34.45, Object5: false)

print(coletion03.Object5)

//Optionals
var sweets : String?
print(sweets) //print nil

var clothe : String?
clothe = "Coat"
//print(clothe!) which is unwrap or if let
if let clt = clothe{ //with if let not need unwrap using !
    print(clt)
}


