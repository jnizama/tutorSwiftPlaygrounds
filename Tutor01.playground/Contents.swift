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

//***** DICTIONARIES *****//
//Save list unordered, use it to look up values based on their identifiers.
//var someDict = [KeyType: ValueType]()

var dicctionary01 = [String:String]()
dicctionary01["name1"] = "Josepth"
dicctionary01["name2"] = "Margarita"
dicctionary01["name3"] = "Luis"
dicctionary01["name3"] = "Luis"

var dicctionary02 = [Int:Bool]()
dicctionary02[123] = true
dicctionary02[456] = true
dicctionary02[789] = false

//removing using removeValue or nil
dicctionary02.removeValue(forKey: 456)
dicctionary02[789] = nil
dicctionary02[789] = true
print(dicctionary02)
//Another way to initialize
var dicctionary03 : [Int:String] = [1: "Love", 2: "Hate"]

//***** SWITCH *****//
//NOTE: By defult in swift we dont need explicit break statement; as c/c++
//if we can continue the executing we use Fallthrough

switch dicctionary03[2] {
case "Love":
    print("you love")
default:
    print("you don't love")
}

//Using Fallthrough hace que se ejecute el siguiente case as well.
var index = 100
switch index {
case 11:
    print("you have 10")
    fallthrough;
case 100,20:
    print("you have 11-20")
    fallthrough;
case 21,50:
    print("you have 21-50")
    fallthrough;
case 12:
    print("you have 51-100")
    fallthrough;
default:
    print("you don't nothing")
}
/***output
        you don't love
        you have 11-20
        you have 21-50
        you have 51-100
        you don't nothing
 *********/
//Calling Class

let person = Person.init()

let terror = FreddyAndChukky()
print(terror.ChukkyScream())

FreddyAndChukky.NoBodyScream()
FreddyAndChukky.OthersScream()

//Using class inhance
SonsFreddyAndChukky.NoBodyScream();


//Using static class
print(Building.dimension)
print(Building.Dimensions())

let name = "Andrea Bocceli"
//clasic for
for s in name {
    print(s)
}
let names: [String] = ["Jose","Pablo","Mesias"];

//for typescript (JS) style
names.enumerated().forEach{(offset, element) in
    print("hola")
}

