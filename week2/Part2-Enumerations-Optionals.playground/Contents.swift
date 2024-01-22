import UIKit
/*:
 # Part 2: Enumerations and Optionals in Swift
 
 1. There are several gasoline types, 92, 95, 98, and diesel that we can use enum to model them.
 
 ● Please declare an enum named Gasoline to model gasoline.
 
 ● Every kind of gasoline has its price. Please declare a computed property named price and a method named getPrice separately in Gasoline enum that both will return different prices depending on different gasoline.
 
 ● Please establish raw values for Gasoline. The data type of raw value should be String. For example, should be “92”.
 
 ● Please explain what enum associated value is and how it works.
 */

// declare an enum named Gasoline to model gasoline.
enum Gasoline: String {
    case nineTwo = "92", nineFive = "95", nineEight = "98", diesel = "diesel"
    
    var price: Double {
        get {
            switch self {
            case .nineTwo:
                return 15
            case .nineFive:
                return 17
            case .nineEight:
                return 20
            case .diesel:
                return 10
            }
        }
    }
        
    func getPrice() -> Double {
        switch self.rawValue {
        case "92":
            return 15
        case "95":
            return 17
        case "98":
            return 20
        case "diesel":
            return 10
        default:
            return 0
        }
    }
}
let priceByComputedProperty = Gasoline.nineFive.price
let priceByMethod = Gasoline.nineFive.getPrice()
let rawvaluOfGasoline = Gasoline.nineFive.rawValue
print("The price of \(rawvaluOfGasoline) is \(priceByComputedProperty)")
print("The price of \(rawvaluOfGasoline) is \(priceByMethod)")

// Associated value is a kind of value that enum can use to difine the type of its case and it will looks like below
enum Human {
    case name(String)
    case age(Int)
}
// Then you can use it in the method below to specify some value you need
func describe(people: Human) -> String {
    switch people {
        //use let to declare a 'name' constant and you can use it in case .name
    case .name(let name):
        return "My name is \(name)"
    case .age(let age):
        return "I am \(age) years old"
    }
}
// And it can let you to insert the value base on the type you specified when you call the case.
describe(people: Human.name("Allen"))
describe(people: Human.age(50))


/*:
2. Optional is a very special data type in Swift. Take var a: Int? = 10 for example, the value of a will be nil or Int . You should have learned how to deal with Optional.
 
 ● People would like to have pets, but not everyone could have one. Declare a class Pet with name property and a class People with pet property which will store a Pet instance or nil. Please try to figure out what data type is suitable for these properties in Pet and People.
 
 ● Please create a People instance. Use guard let to unwrap the pet property and print its name.
 
 ● Please create another People instance. Use if let to unwrap the pet property and print its name.
 */

// When you initialize the class Pet, the property should always be String.
class Pet {
    var name: String
    init(name: String) {
        self.name = name
    }
}

// Because you set the property pet with optional inside class People, you can set the parameter with Pet instance or nil when initializing.
class People {
    var pet: Pet?
    init(pet: Pet?) {
        self.pet = pet
    }
}

// create a People instance. Use guard let to unwrap the pet property and print its name.
let chrisPet = Pet(name: "Mario")
let chris = People(pet: chrisPet)

func printPetNameByGuardLet(people: People) {
    guard let petName = people.pet?.name else {
        return
    }
    print("\(petName)")
}
printPetNameByGuardLet(people: chris)

// create another People instance. Use if let to unwrap the pet property and print its name.
let kenPet = Pet(name: "meow")
let ken = People(pet: kenPet)

func printPetNameByIfLet(people: People) {
    if let petName = people.pet?.name {
        print("\(petName)")
    }
}
printPetNameByIfLet(people: ken)
