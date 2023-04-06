//Variables
var strComputer = "My Computer 01"
let strCentury = "Siglo 21"
let intCentury = 21
let fruits = ["Apple", "Banana", "Stranberri", "Orange" ]
let coletion01 = (strCentury, strComputer, fruits, intCentury)
let coletion02 = ("Jazz", "Salsa", "Caporeia", 123, 34.45, false)


for fruit in fruits {
    print(fruit)
}

//Tupples

//coletion or tuples with names
let coletion03 = (Object1 : "Jazz", Object2: "Salsa", Object3: 34.45, Object5: false)

print(coletion03.Object5)

var clothe : String?
clothe = "Coat"
//print(clothe!) which is unwrap or if let
if let clt = clothe{ //with if let not need unwrap using !
    print(clt)
}
