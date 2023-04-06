// Using Closures

/*
Los closures son bloques de códigos que se asigna a variables o constantes que puede ser usada en toda la
aplicación sin necesidad de tener un nombre de función, la gestión de memoria la hace swift.

 Closures are self-contained blocks of functionality that can be passed around and used in your code.
 Closures in Swift are similar to blocks in C and Objective-C and to lambdas in other programming languages.
 
*/
let courseAverage = {
    (course1: Double, course2: Double, course3: Double) -> Double
    in
        return (course1 + course2 + course3 ) / 3
}

let avg = courseAverage(11, 15, 17 )

print(avg)
