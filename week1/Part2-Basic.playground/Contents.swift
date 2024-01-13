import UIKit

/*
 # 1. Please explain the difference between let and var.
    Answer: let is for create a constant. You can't change the value of a constant.
            var is for create a variable. You can change the value of a variable.
 */

//: # 2.define a variable pi and assign a value to it
var pi: Float = 3.14159

//: # 3.Declare two constants x and y of type Int then assign any value to them. After that, please calculate the average of x and y and store the result in a constant named average.
let x: Int = 11
let y: Int = 14
var average = (x + y) / 2

//: # 4. Following Q3, now we want to save the average in a record system, but the system doesn’t accept 65 but 65.0.
//: # Please solve this problem so that we can put the average in the record system.
//: # Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).
var averageFloat = Float(average)
print(averageFloat)
//:     Answer: The difference between ( 10 / 3 ) and ( 10.0 / 3.0 ) is the type, Xcode will recognize the number type you offer if you didn't specify one.
//:     ( 10 / 3 ) the number in this cal using Int,so the result will be type Int.
//:     ( 10.0 / 3.0 ) the number in this cal will be recognized as Float by Xcode, so the result will be type Float.
//:     Because this calculation will be infinite decimal, Xcode can't just store the whole decimal in your computer. The type Int will just hold the integer and the type Float can hold 6-9 decimal.
var numA = 10 / 3
var numB = 10.0 / 3.0

//: # 5. Declare two constants that values are 10 and 3 each, then please calculate the remainder and save the result in a constant named remainder.
let conA = 10
let conB = 3
let remainder = 10 % 3

//: # 6. Swift is a very powerful language that can infer the data type for you ( Type Inference ) while we still need to know the basics well. Please change the following codes into the ones with the type annotation. Ex: var x = 10 => var x: Int = 10
//: var flag = true
//: var inputString = "Hello world."
//: let bitsInBite = 8
//: let averageScore = 86.8
var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Float = 86.8

//: # 7. What is Type Inference in Swift?
//:     Answer: Type Inference means the compiler will be able to figure out the type of value if you don't specified a type to it when declare it.

//: # 8. What is the issue about this piece of code?
//: var phoneNumber = 0987654321
//: phoneNumber = "Hello world."
//:     Answer: You can't set String to a variable which is declared as Int. So it will occur error on this issue.

//: # 9. Compound assignment operators are very useful when programming. Please declare a variable salary with initial value 22000, and use unary plus operator adding 28000 to salary, so it will be 50000 after this process.
var salary = 22000
salary += 28000

//: # 10. You should notice that ‘=’ has a different meaning in programming. In the real world, ‘=’ means equal while in programming, ‘=’ means assign. You simply put the right hand side data into the left hand side variable or constant.
//: # Now please write down the Equality operator in Swift.
//:     Answer: '==' means epuality in programming.


