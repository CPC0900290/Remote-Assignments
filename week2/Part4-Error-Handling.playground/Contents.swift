import UIKit

/*:
 # Part 4: Error Handling in Swift
 */
enum GuessNumberGameError: Error {
    case wrongNumber
}
class GuessNumberGame {
    var targetNumber = 10
    func guess(number: Int) throws {
        do {
            guard number == targetNumber else {
                throw GuessNumberGameError.wrongNumber
            }
            print("Guess the right number: \(targetNumber)")
        } catch {
            print("Guess the wrong number: \(number), the target is: \(targetNumber)")
        }
    }
}

let guessNumberGame = GuessNumberGame()
guessNumberGame.guess(number: 20)
/*:
 Read the code above first and paste it in the playground file, there is an error inside the code.
 
 Please solve the error by adding a piece of code in the file. Call guess(number:) and pass 20 as the argument after you fix the problem.
 */
