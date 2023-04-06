    
//Itering a dictionary

var dicctionary01 = [String:String]()
dicctionary01["name1"] = "Josepth"
dicctionary01["name2"] = "Margarita"
dicctionary01["name3"] = "Luis"

//print the index and value of a dictiorary
for(name, literal) in dicctionary01{
    print("the \(name) is \(literal)")
}

//unwrap Optionals

var clothe : String?
clothe = "Coat"

//print(clothe!) which is unwrap or if let
if let clt = clothe{ //with if let not need unwrap using !
    print(clt)
}

//Itering arrays
for x in 1...5 {
    print("el array es \(x)")
}

