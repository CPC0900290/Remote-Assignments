import UIKit

/*:
 # Part 4: Control Flow
 1. Here is an array:
 let lottoNumbers = [10, 9, 8, 7, 6, 5]
 Please use For-In loop and Range to print the last three members in the .lottoNumbers. array.
 */
    let lottoNumbers = [10, 9, 8, 7, 6, 5]

    for i in lottoNumbers.count - 3 ... lottoNumbers.count - 1 {
        print(lottoNumbers[i])
    }
    print("\n")

    for num in lottoNumbers {
        if num < 8 {
            print(num)
        }
    }
    print("\n")
/*:
 2. Please use a for-in loop to print the results as the images listed below respectively (through .lottoNumbers.):
 .5
 .6
 .7
 .8
 .9
 .10
 
 .10
 .8
 .6
 */
    for numReverse in lottoNumbers.reversed() {
        print(numReverse)
    }
    for num in lottoNumbers{
        if num % 2 == 0 {
            print(num)
        }
    }
    print("\n")
/*:
 3. Please use a while loop to solve the Q2.
 */
    var numRev = lottoNumbers.count - 1
    while numRev >= 0 {
        print(lottoNumbers[numRev])
        numRev -= 1
    }

    var index = lottoNumbers.startIndex
    while index < lottoNumbers.count {
        if lottoNumbers[index] % 2 == 0 {
            print(lottoNumbers[index])
        }
        index += 1
    }
    print("\n")
/*:
 4. Please use a repeat-while loop to solve Q2.
 */
    numRev = lottoNumbers.count - 1
    repeat {
        print(lottoNumbers[numRev])
        numRev -= 1
    } while numRev >= 0

    index = lottoNumbers.startIndex
    repeat {
        if lottoNumbers[index] % 2 == 0 {
            print(lottoNumbers[index])
        }
        index += 1
    } while index < lottoNumbers.count

/*:
 5. What are the differences between while and repeat-while?
 
 Answer:
 
 while - It will determin the statement first, then run the code inside {} block if the statement is comformed to the statement.
 
 repeat while - It's opsite to while, it will run the code inside {} first, then determine the statement is true or false. So this means it will run once at least even the statement is false.
 */

/*:
 6. Declare a variable isRaining to record the weather. Please write a statement that if the weather is raining, print “It’s raining, I don’t want to work today.”, otherwise print “Although it’s sunny, I still don’t want to work today.”
 */
    var isRaining = true
    if isRaining {
        print("It's raining, I don't want to work today.")
    } else {
        print("Although it’s sunny, I still don’t want to work today.")
    }
/*:
 7. In a company, we might use numbers to represent job levels. Let’s make an example. We use 1 for the Member, 2 for Team Leader, 3 for Manager, and 4 for Director.
 Now, declare a variable named jobLevel and assign a number to it. If the jobLevel number is in our list, print the relative job title name; if not, just print “We don't have this job”. Please use the if-else statement and the switch statement to complete this requirement separately.
 */
    var level = [1: "Member",2: "Leader", 3: "Manager", 4: "Director"]
    var jobLevel = 2
    var result = level.contains {$0.key == jobLevel}

    if result {
        print(level[jobLevel] ?? "There is error occured when get the job title.")
    } else {
        print("We don't bave this job")
    }

    switch jobLevel {
    case 1:
        print(level[1] ?? "There is error occured when get the job title.")
    case 2:
        print(level[2] ?? "There is error occured when get the job title.")
    case 3:
        print(level[3] ?? "There is error occured when get the job title.")
    case 4:
        print(level[4] ?? "There is error occured when get the job title.")
    default:
        print("We don't have this job")
    }

