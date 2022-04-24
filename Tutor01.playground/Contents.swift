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

var clothe : String?
clothe = "Coat"
//print(clothe!) which is unwrap or if let
if let clt = clothe{ //with if let not need unwrap using !
    print(clt)
}

//***** DICTIONARIES *****//
//Save list unordered, use it to look up values based on their identifiers.
//var someDict = [KeyType: ValueType]()
let myDicc = Dictionary<Int, String>()

var dicctionary01 = [String:String]()
dicctionary01["name1"] = "Josepth"
dicctionary01["name2"] = "Margarita"
dicctionary01["name3"] = "Luis"
dicctionary01["name3"] = "Luis"

//print the index and value of a dictiorary
for(name, literal) in dicctionary01{
    print("the \(name) is \(literal)")
}

var dicctionary02 = [Int:Bool]()
dicctionary02[123] = true
dicctionary02[456] = true
dicctionary02[789] = false


//removing using removeValue or nil
dicctionary02.removeValue(forKey: 456)
dicctionary02[789] = nil
dicctionary02[789] = true
dicctionary02[900] = true
dicctionary02[788] = false
dicctionary02[788] = true

print("Print a diccionary")
print(dicctionary02)
dicctionary02.removeValue(forKey: 900);
print("Print a diccionary with one element removed")
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

//TUPLAS (seem collection but not 100%)
//Tuplas allow you save a collection of differente data type.

let myTupla = ("Apple", 1.55, true)

print(myTupla.2)

//also we can assign by name
var (Company, Price, isBoolean) = myTupla

print(Company)

//tuple using format dictionary
var Books = (Author: "Federico", Year: "2008", PageNumber: 850, Editorial: "Navarrete")
print(Books.Author)

//Enumerations
enum CompassPoint {
    case north, south, east, west
}
//Swift enumeration cases don’t have an integer value set by default, unlike languages like C and Objective-C. In the CompassPoint example above, north, south, east and west don’t implicitly equal 0, 1, 2 and 3. Instead, the different enumeration cases are values in their own right, with an explicitly defined type of CompassPoint.

//let compasPoint: CompassPoint = CompassPoint.south
//or
var compasPoint: CompassPoint = .south
//The type of directionToHead is already known, and so you can drop the type when setting its value. This makes for highly readable code when working with explicitly typed enumeration values.
print( compasPoint)

compasPoint = .south
switch compasPoint {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}
//We can handle a enum as a collection using ":CaseIterable"

enum Bebidas : CaseIterable{
    case cocacola, pepsi, guarana, incacola, colareal
}
let totalBebidas = Bebidas.allCases.count
print(totalBebidas)
for bebidas in Bebidas.allCases{
    print(bebidas)
}
//enum with type
enum Computer {
    case DeviceName(String)
    case IP(Int, Int, Int)
    case MAC(String)
    case Year(Int)
    case Inch(Int)
    case OperativeSystem(String)
}
//By this way, we assure that use the appropiate datatype.
var myComputer01 : Computer = .Year(2021)
let SO: Computer = .OperativeSystem("Linux")
myComputer01 = .MAC("54A447")
print(myComputer01)
print(SO)

//Other way using raw Value

enum FullComposeName : String{
    case name = "Joseph", lastName="Teengs"
}

print(FullComposeName.name.rawValue)

//Operador Range (...)

let continents = ["America", "Africa", "Europe", "Asia", "Oceania", "Antartida"]
let subContinentsq = continents[2...4] //subMatrix from pos 2 to 5
//print: -----> ["Europe", "Asia", "Oceania"]
print(subContinentsq)
let subContinents2 = continents[1..<4] //subMatrix from pos 2 to 5
//print: -----> ["Africa", "Europe", "Asia"]
print(subContinents2)
//Show for one side (de un lado único)
let subContinents3 = continents[...2] //subMatrix from pos 2 to 5
//print: -----> ["America", "Africa", "Europe"]
print(subContinents3)
//Close range
let subContinents4 = continents[2...4] //subMatrix from pos 2 to 5
//print: -----> ["Europe", "Asia", "Oceania"]
print(subContinents4)

//Tranform array close range to Array class
//var rangeClose = [1...8]
//or
var rangeClose = [1...8]
//we don't can use rangeClose[2] or [3]...  Fatal error: Index out of range
//because it is only a element of array
//then we use Array class
var rangeCls = Array(rangeClose[0])

print(rangeCls[2])

//repeat
var x: Int = 5
repeat{
    print("you value is: \(x)")
    x-=1
}while(x > 0)

///
var aleatorio = arc4random_uniform(100)  //aleatorio numbers
//we can use randon
//-------->var aleatorio = Int.random(in: 0...100)
print(aleatorio)
 
