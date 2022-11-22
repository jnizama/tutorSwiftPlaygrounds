
import Foundation

///*** CASTING *******
let myCadena = "World"
let myInt = 32

class MyClass {
    var name: String!
    var age: Int!
}

let myClass = MyClass()
myClass.name = "Worl Wide Web"
myClass.age = 22

let Array: [Any] = [myCadena, myInt, myClass] //we can save differents objects in a variable

//How know what is type of class is a object when it is ANY?
//We use Type Casting

for item in Array{
    if item is String{
        let myItem = item as! String
        print("My type is String with value \(myItem)")
    }
    if item is Int{
        let myItem = item as! Int
        print("My type is Int with value \(myItem)")
    }
    if item is MyClass{
        let myItem = item as! MyClass
        print("My type is MyClass with value \(myItem.name!)")
    }
}
//Other more simple
for item in Array{
    if let myItem = item as? String{
        print("My type is String with value \(myItem)")
    }else if let myItem = item as? Int{
        print("My type is Int with value \(myItem)")
    }else if let myItem = item as? MyClass{
        print("My type is MyClass with value \(myItem.name!)")
    }
}

//Nested type (tipos anidados)


