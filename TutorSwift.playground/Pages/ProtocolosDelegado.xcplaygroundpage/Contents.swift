//: [Previous](@previous)

import Foundation

//Con los protócolos delegado podemos crear un mecanismo que nos permite
//comunicar 2 clases en sentido inverso.

//Ejemplo:

class FirsClass {
    func callSecondClass(){
        let secondClass = SecondClass()
    }
}
class SecondClass {
    func callFirstClass(){
        
    }
}
//In this example we can call from first class to second class
let firstClass = FirsClass()
firstClass.callSecondClass()

//But HOW CALL from Second class to the first CLASS???
//USING DELEGATE PROTOCOL. It will be async way (se llamada en modo async)

class CFirsClass : SecondClassProtocol {
    func call() {
        print("I came back")
    }
    
    func callSecondClass(){
        let secondClass = CSecondClass()
        secondClass.myDelegate = self
        secondClass.callFirstClass()
    }
}
class CSecondClass {
    var myDelegate: SecondClassProtocol?
    func callFirstClass(){
        sleep(20)
        myDelegate?.call() //Llama al protócolo delegado
    }
}
protocol SecondClassProtocol{
    func call()
}
//In this example we can call from first class to second class and vicebersa
//De esta forma hemos hecho una comunicación en 2 sentidos
let cfirstClass = CFirsClass()
cfirstClass.callSecondClass()
