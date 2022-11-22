
import Foundation

//protocolo son similares a interfaces en C# pero es obligatorio
//declarar de nuevo variables funciones.

protocol PersonProtocolo {
    var name: String {get set}
    var age: Int {get set}

}

struct Programmer : PersonProtocolo {
    var language: String
    var name: String
    var age: Int
}

var p = Programmer(language : "C#", name: "Jorge", age : 22)
print(p)

