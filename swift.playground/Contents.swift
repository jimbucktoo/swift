//: Playground - noun: a place where people can play

import UIKit

//Variables
var varstr = "Hello, playground"
var varint = 13
var vararr = [1,2,3,4,5]

//Constants
let letstr = "Hello, playground"
let letint = 13
let letarr = [1,2,3,4,5]

//Operators
//Unary Operator
var isItHot = true
!isItHot
//Binary Operator
var amICool = false
var feelGoodAboutMyself = true
feelGoodAboutMyself = amICool ? true : false
//Ternary Operator
var bankAccountBalance = 1000
var atmMessage = bankAccountBalance >= 200 ? "You're rich." : "You're broke."
atmMessage

//Strings
//Inferred String
var inferredStr = "String"
//Explicit String
var explicitStr: String = "String"

var firstname = "Jimmy"
var lastname = "Liang"
var fullname = "Jimmy Liang"
var age = 23
var strAge = "23"

//String Concatonation
var concatfullname: String = firstname + " " + lastname + " is " + strAge
//String Interpolation
var interpfullname = "\(firstname) \(lastname) is \(age)"

fullname.append(" sucks at appending strings.")

var lowercase = "i wish i could type in all caps."
lowercase.uppercased()
var capitalize = "I CAN'T STOP TYPING IN ALL CAPS."
capitalize.lowercased()

var chat = "What the fuck is this piece of shit doing with my bitch?"
if chat.contains("fuck") || chat.contains("shit") || chat.contains("bitch") {
    chat.replacingOccurrences(of: "fuck", with: "fudge")
    chat.replacingOccurrences(of: "shit", with: "shiz")
    chat.replacingOccurrences(of: "bitch", with: "bish")
}

//Numbers
//Number Inference
var num = 13

//Number Explicit
var intNum: Int = 13
//Double is a 64 bit floating-point number with at least 15 decimal place precision
var doubleNum: Double = 12345678.90
//Float is a 32 bit floating-point number with at least 6 decimal place precision
var floatNum: Float = 273.15

//Arithmetic Operators
var add = 1 + 2 + 3
var subtract = 3 - 2 - 1
var multiply = 1 * 2 * 3
var divide = 6 / 3
var remainder = 7 % 3

//Functions
func calculateArea (length: Int, width: Int) -> Int {
    let area = length * width
    return area
}

var area1 = calculateArea(length: 7, width: 3)
var area2 = calculateArea(length: 13, width: 7)
var area3 = calculateArea(length: 3, width: 13)

//Booleans
var inferredBool = true
var explicitBool: Bool = false

//Comparison Operators
if inferredBool != true {
    print("True.")
} else {
    print("False.")
}

//Logical Operators

let allowEntry = false

if !allowEntry {
    print("Access Denied.")
} else {
    print("Access Granted.")
}

let enteredDoorCode = true
let passedRetinaScan = false
let overridePassword = true

if enteredDoorCode && passedRetinaScan || overridePassword {
    print("Welcome to XCode.")
} else {
    print("Permission denied.")
}

//Arrays
var arr: [Any] = [1,2,3,"one","two","three"]
var intArr: [Int] = [1,2,3,4,5]
var strArr: [String] = ["one","two","three","four","five"]

arr.append("four")
arr.append("five")
print(arr)

arr.remove(at: arr.count - 1)
print(arr)

//Declare Array
var declaredArr: [String]
//Initialize Array
var initializedArr = [String]()

//Loops
var looparr: [Int] = [100,200,300,400,500]
//While Loops
var x = 0
repeat {
    x+=1
} while (x < looparr.count)
print(x)
//For-In Loop
for i in 0..<looparr.count {
    print(looparr[i])
}

for y in 0..<5 {
    print(y)
}

for z in 1...5 {
    print(z)
}
//ForEach Loop
for item in looparr {
    print(item)
}

//Dictionaries
var namesOfIntegers = [Int:String]()
namesOfIntegers[3] = "three"
namesOfIntegers[1] = "one"
namesOfIntegers[2] = "two"
print(namesOfIntegers)

var airports = [String:String]()
airports = ["LAX":"Los Angeles","STL":"St. Louis","DEN":"Denver"]
print(airports)

if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary has: \(airports.count) items.")
}
//Replace Dictionary Value
airports["STL"] = "Lambert International"
print(airports)

//Destroy Dictionary Item
airports["DEN"] = nil
print(airports)

//For-In Loop with Dictionary Key-Value Pairs
for (airportsKey,airportsValue) in airports {
    print("\(airportsKey):\(airportsValue)")
}

//For-In Loop with Dictionary Keys
for key in airports.keys {
    print(key)
}

//Optionals
var optionalVar: Int?
optionalVar = 33

//Check to make sure optional is not empty
if optionalVar != nil {
    print(optionalVar!)
}

//Best way to check to make sure optional is not empty
if let optionalLet =  optionalVar {
    print(optionalLet)
}

//Optionals with Class
class Car {
    var model: String?
}

var vehicle: Car?

print(vehicle?.model)

vehicle = Car()
vehicle?.model = "Passat"

//If you care about whether the optional holds a value, use if-let
if let v = vehicle, let m = v.model {
    print(m)
}

var cars: [Car]?
cars = [Car]()
//If you don't care about whether the optional holds a value, use the question mark
if let carArr = cars , carArr.count > 0 {
    print(carArr)
} else {
    cars?.append(Car())
    print(cars?.count)
}

//Implicitly Unwrapped Optional
class Person {
    var _age: Int!
    
    var age: Int {
        if _age == nil {
            _age = 15
        }
        return _age
    }
    
    func setAge(newAge: Int) {
        self._age = newAge
    }
}

var jack = Person()
print(jack._age)
print(jack.age)


//Constructor initiated variables do not need Optionals
class Dog {
    var species: String
    
    init(someSpecies: String) {
        self.species = someSpecies
    }
}

var lab = Dog(someSpecies: "Labrador")
print(lab.species)

//Object Oriented Programming
class Vehicle {
    var tires = 4
    var headlights = 2
    var horsepower = 450
    var model = ""
    
    func drive() {
        print("Vroom, Vroom.")
    }
    
    func brake() {
        print("Skirt, Skirt.")
    }
}

let bmw = Vehicle()
bmw.model = "m3"
bmw.drive()
let ford = Vehicle()
ford.model = "gt40"
ford.brake()

//Pass By Reference
func passByReference (vehicle: Vehicle) {
    vehicle.model = "F150"
}
passByReference(vehicle: ford)
print(ford.model)

//Pass By Value
func passByValue (horsepower: Int) {
    var newHorsepower = horsepower
    newHorsepower = 0
}
passByValue(horsepower: 40)

//Inheritance
class Automobile {
    init() {
        print("I am the parent class.")
    }
    
    var tires = 4
    var make: String?
    var model: String?
    var currentSpeed: Double = 0
    func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 2
    }
    func brake(speedIncrease: Double) {
        currentSpeed = speedIncrease / 2
    }
}

class SportsCar: Automobile {
    override init() {
        super.init()
        print("I am the child class.")
        make = "bmw"
        model = "m3"
    }
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 3
    }
}

class Truck: Automobile {
    override init() {
        super.init()
        print("I am the child class.")
        make = "bmw"
        model = "m3"
    }
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 0.5
    }
}

let car = SportsCar()

//Polymorphism
class Shape {
    var area: Double?
    func calculateArea(valueA: Double, valueB: Double){
        
    }
}

class Triangle: Shape {
    override func calculateArea(valueA: Double, valueB: Double) {
        area = (valueA * valueB) / 2
    }
}

class Rectangle: Shape {
    override func calculateArea(valueA: Double, valueB: Double) {
        area = valueA * valueB
    }
}


















