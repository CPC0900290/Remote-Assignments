import UIKit

/*:
 # Part 1: Object-Oriented Swift
 1. Declare a class Animal with a property gender and a method eat() . The data type of gender should be enum Gender as below and when you call eat() method, it will print “I eat everything!”
 */
 enum Gender {
 case male
 case female
 case undefined
 }
// Write your code below.
 class Animal {
     init(gender: Gender) {
         
     }
     
     func eat() {
         print("I eat everything!")
     }
 }
/*:
 2. Declare three classes: Elephant , Tiger , Horse that inherits from Animal and override the eat() method to print what they usually eat.
 */
class Elephant: Animal {
    
    override func eat() {
        print("I eat leaves!")
    }
}
class Tiger: Animal {
    override func eat() {
        print("I eat Horse!")
    }
}
class Horse: Animal {
    override func eat() {
        print("I eat grass!")
    }
}
/*:
 3. Declare a class Zoo with a property weeklyHot which means the most popular one in the zoo this week. The codes below can’t work correctly, please find what data type should A be and solve the problem. Note that tiger , elephant , and horse are instances of class Tiger, Elephant, and Horse respectively.
*/
 class Zoo {
 var weeklyHot: Animal
     init(weeklyHot: Animal) { self.weeklyHot = Animal(gender: Gender.undefined)  }
 }
let zoo = Zoo(weeklyHot: Tiger(gender: Gender.undefined))
zoo.weeklyHot = Tiger(gender: Gender.undefined)
zoo.weeklyHot.eat()
zoo.weeklyHot = Elephant(gender: Gender.undefined)
zoo.weeklyHot.eat()
zoo.weeklyHot = Horse(gender: Gender.undefined)
zoo.weeklyHot.eat()

// Write your code below.

/*:
 4. What is an instance? What does Initilizer do in Class and Struct?
 */
/*:
 instance - It's an object created when you initialize the class/Structure/enumeration. When you difine a class/structure/enumeration, you just create a blueprint. There not a real object to store those property or methods so you can't use them. An instance is the object when you assign a class/structure/enumeration to a variable/constant and initailize it.
 
 initializer - Initializer is a special type of function, the main task is to create the instance of class/structure/enumeration. The initialization is a two-phase proccess. In the fitst phase, the stored property should be assigned an initial value. Once those are done, the second phase begins, you can customize your stored properties as you want before the instance is considered ready for use.

 */
/*:
 5. What’s the difference between Struct and Class ?
 */
/*:
 Struct
 
 - Inheritance: Struct can't inherit from other struct, each struct is on its own.
 
 - Value Type: Every instance that created from the same truct will be a copy of the struct. These copy are all independent, changing the value of stored property won't effect the others value.
 
 - Immutable: Basically, the value of a struct can't be modified. If you create a structure with default value of stored property, you can't modify this value in the structure when you initialize it with parameter. Instead, it will create a whole new struct which is a copy of the original one.
 
 Class
 
 - Inheritance: Class can inherit from parent, it will be like a family tree. The inheritance can get the feature of their parent.
 
 - Reference Type: Every instance that created from the same class refer to the same value of the properties. The value will be the same even you access different instances.
 
 - Mutable: You can change the value of class. Basically, every time you create an instance with different parameter, you change the value of the class. You can get the same value if you access the value from the other instance.
 */
/*:
 6. What’s the difference between reference type and value type ?
 */
/*:
 reference type
 
 - Like class in swift, the instance of it are object with identity.
 
 - All the instances of the same reference type share the same copy of their data.
 
 - reference type remain mutable
 
 value type
 
 - An instance of a structure is conceptually a value.
 
 - Value type copy their value when used in a new place.
 
 - Value type can be immutable when declaration as constant.
 */
/*:
 7. What’s the difference between instance method and type method ?
 */
/*:
 - Instance method: It's a normal method in the type class/structur/enumeration. You can only call it on instance, which means you need to assign a instance of it before you call it. It will occur error when complie if you call it on type itself.
 
 - Type method: You can specified the method with static/class in front of var/let to create type method. It can only be called on type itself, which means you have to call it without instance, just calling it using type(class/struct/enum) name. The 'class' method can be overrided from subclass, the static method can't.
 */
/*:
 8. What does self mean in an instance method and a type method respectively?
 */
/*:
 self in an instance method means the instance itself. You don't need to write it all the time, Swift assume that you are referring to the property  or method of the current instance.
 
 self in a type method means the type itself. You use it to represent the type it self rather than instance of the type.
 */

