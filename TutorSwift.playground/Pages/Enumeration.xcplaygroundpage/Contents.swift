
import Foundation

// LAS ENUMERACIONES ES UNA FORM DE DEFINIR MIS PROPIOS TIPOS DE VALOR

enum PersonData {
    case firstName(String)
    case lastName(String)
    case address(String, Int)
    case phone(Int)
}

var personData : PersonData =
    .firstName("jorge")

// USING ENUMS forzamos a que el usuario ingrese datos esperandos por el programa
personData = .lastName("nizama")
personData = .address("ca. florida", 171)

print(personData)

//enum Vehiculo : Int { We can change String, Int, etc
enum Vehiculo : String {
    case Name = "Nissan"
    case Plate
    case Color
}

print(Vehiculo.Name.rawValue) //without rawValue it will use Name and no Nissan

