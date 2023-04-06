
import UIKit

// Demo how use repeat while.

var odds = [1,3,5,7,9]
var index = odds.count - 1

print("the indexes are \(odds)")
repeat{
    odds.remove(at: index)
    index = index - 1
}while(odds.count > 0)

print("the indexes are \(odds)")


var v_number :  Int
var x : Int = 0
repeat{
    x += 1
    v_number = Int(arc4random_uniform(10)) //getting random number
    print("the cycle has \(x) times executed")
    print(v_number)
}while (v_number != 8)

