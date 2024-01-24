import UIKit

/*:
 # Remote Learning Assignment - Week 3
 
 1. What is a closure ? How to execute a closure?
 */

/*:
 Basically closure is a function without name. It can group the code excute together without creating named function.
 
 There are two way you can excute a closure, depands on where you declare the closure. You use variable/constant name to excute the closure if you decalare it to the variable/constant.
 
 You call the function name with closure as an argument to excute the closure if you difine a closure as parameter in function.
 */


/*:
 2. Please declare a closure whose input type is Int, output type is Bool. The functionality of this closure is to verify if the input is odd or not. Return true if it’s odd and vice versa.
 */
var odd = { (num: Int) -> Bool in
    num % 2 != 0 ? true : false
}

odd(5)
odd(10)



/*:
 3. Please complete the following function that prints a triangle made of asterisks.
 
 For example, here’s what the output of printTriangle(layers: 5) should be:
 
    *
    **
    ***
    ****
    *****
 */


func printTriangle(layers: Int) {
    // TODO: print a triangle
    for i in 1...layers {
        for _ in 1...i {
            print("*", terminator: "")
        }
        print("\n")
    }
}

printTriangle(layers: 5)


