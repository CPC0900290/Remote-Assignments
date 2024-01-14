import UIKit

/*:
 You should know how to declare an Array in Swift, and also how to add, remove, insert, read an object in an array.
 You should be familiar with the following syntax: append , .insert , remove.
 
 Arrays are dangerous in Swift. If you access the array with an index which is out of range, your app will crash with fatal error.
 Please interact with the array very carefully.
 
 1. Please initialize an empty array with String data type and assign it to a variable named 'myFriends'.
 */
    var myFriends = [String]()
/*:
 2. According to Q1, now I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help me to add their name into myFriends array at once.
 */
    myFriends = ["Ian", "Bomi", "Kevin"]
    
/*:
 3. Oops, I forgot to add ‘Michael’ who is one of my best friends, please help me to add Michael to the end of myFriends array.
 */
    myFriends.append("Micheal")
/*:
 4. Because I usually hang out with Kevin, please move Kevin to the beginning of the 'myFriends' array.
 */
    let temp =  myFriends.remove(at: 2)
    myFriends.insert(temp, at: 0)
    // Here I got an error with 'Instance method 'insert(contentsOf:at:)' requires the types 'String' and 'String.Element' (aka 'Character') be equivalent'. The reason it occurred an error is 'myFriends.insert(contentsof:temp, at: 0)' and 'myFriends.insert(temp, at: 0)'. if you use insert with 'contentof:' it is sonsidered you should insert a sequence of elements (like another array or a range) and without 'contentof:'  is used to insert a single element.

/*:
 5. Use for...in to print all the friends in myFriends array.
 */
    for friend in myFriends {
        print(friend)
    }
/*:
 6. Now I want to know who is at index 5 in the myFriends array, try to find the answer for me. Please explain how you get the answer and why the answer is it.
 
    Answer:
 
    We can use 'myFriends.count' to know how many elements is in 'myFriends'. Because there are just 4 items in 'myFreinds' so there is nothing at index 5. You can also try to use 'print(myFriends[5])' which can print the element that is at index 5, it will occurred an error in build time.
 */
    print(myFriends.count) // Counting the elements in 'myFriends'.
    //print(myFriends[4]) // This will occurr an error because the position is empty.
/*:
 7. How to get the first element in an array?
 
    Answer:
 
    You can use [] to specify the index and the index is counted from 0. So you can use myFriends[0] to get the first element in myFriends.
 
    Swift also offer an property .last can offer the last element in an array.
 */
    print(myFriends[0])
    print(myFriends.first ?? "There is nothing in the array")

/*:
 8. How to get the last element in an array?
 
    Answer:
    
    You can also use [] specifying the last index to get the last element even you don't know the count of the array. Using .count property to know how many items in there and minus 1 to let it become the last index in the array then you can get the last element.
 
    Swift also offer an property .last can offer the last element in an array.
 */
    print(myFriends[myFriends.count - 1])
    print(myFriends.last ?? "There is nothing in the array")

/*:
 9. Please initialize a Dictionary with keys of type String, value of type Int, and assign it to a variable named 'myCountryNumber'.
 */
    var myCountryNumber = [String: Int]()

/*:
 10. Please add three values 1, 44, 81 to myCountryNumber for keys ‘US’, ‘GB’, ‘JP’ respectively.
 */
    myCountryNumber = ["US": 1, "GB": 44, "JP": 81]

/*:
 11. Change the value of ‘GB’ from 44 to 0.
 */
   myCountryNumber["GB"] = 0

/*:
 12. How to declare an empty dictionary?
 */
    var emptyDicA = [String: String]()
    var emptyDicC = Dictionary<Int, Int>()
    var emptyDicB: [String: Int] = [:]
    var emptyDicD: Dictionary<Int, String> = [:]

/*:
 13. How to remove a key-value pair in a dictionary?
 */
    emptyDicA = ["Adam": "Jennie", "Danny": "May"]
    emptyDicA["Adam"] = nil // Set the key "Adam" to nil.
    emptyDicA.removeValue(forKey: "Danny") //Remove key "Danny" and the value of it and it will return the value of "Danny"

/*:
 */
