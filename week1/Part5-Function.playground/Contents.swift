import UIKit

/*:
 # Part 5: Function
 
 ## 1. What are the return types in the following statements?
 
 func birthday( ) -> String {
 }
 
 func payment( ) -> Double {
 }
 
 The first one will return String, the second one will return Double.
 */
/*:
 ## 2. Please declare a function named multiply with two arguments a and b . This function won’t return any value and will only print out the result of a * b . Be noticed that we want to give the argument b a default value of 10.
 */
    func multiply( a: Float, b: Float = 10) {
        let result = a * b
        if result == floor(result) {
            print(Int(result))
        } else {
            print(result)
        }
    }

/*:
 ## 3. What’s the difference between argument label and parameter name in a function?
 
 Answer:
 
 Argument is a name for insert if you call the function. If you call a fuction and xcode ask you to give it some value inside (), that name is the argument. Then the function will know what's value you give for.
 
 Parameter is the name for using inside the function, you can call it when you write the method inside the funcrion.
 
 You can name argument and parameter separately, or just give it one name then you can use it by the same name inside or outside the fuction.
 
 */

/*:
 ## 4. Please declare a function named 'greet' with 'person' as an argument and 'name' as a parameter name. This 'greet' fuction will return a String. For example, if you call the function greet like this:
 
 greet(person: "Luke")
 
 It will return the string: “Hello, Luke”.
 */
    func greet(person name: String) -> String {
        return "Hello, \(name)"
    }
    greet(person: "Luke")



