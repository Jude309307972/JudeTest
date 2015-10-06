//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Methods
class Counter {
    var count = 0
   
    func increment() {
        count++
    }
    
    func incrementBy(amount: Int) {
        count += amount
    }
    
    func reset() {
        count = 0
    }
}

let counter = Counter()
counter.increment()
print(counter.count)

counter.incrementBy(5)
print(counter.count)

counter.reset()
print(counter.count)

class Counter1 {
    var count: Int = 0
//    func incrementBy(amount: Int, numberOfTimes: Int) {
//        count += amount * numberOfTimes
//    }
    func incrementBy(amount: Int, numberOfTimes: Int){
        count += amount * numberOfTimes
    }
    func increment(){
        self.count++
    }
}

let counter1 = Counter1()
counter1.incrementBy(5, numberOfTimes: 3)
counter1.increment()
print(counter1.count)

//struct Point {
//    var x = 0.0, y = 0.0
//    func isToTheRightOfX(x: Double) ->Bool {
//        return self.x > x
//    }
//}
//let somePoint = Point(x: 4.0, y: 5.0)
//if somePoint.isToTheRightOfX(1.0) {
//    print("this point is to the right of the line where x == 1.0")
//}

struct Point {
    var x = 0.0, y = 0.0
    mutating func moveByX(deltaX: Double, y deltaY: Double){
        x += deltaX
        y += deltaY
    }
}
var somePoint = Point(x: 1.0, y: 1.0)
somePoint.moveByX(2.0, y: 3.0)
print("the point is now at (\(somePoint.x), \(somePoint.y))")

class SomeClass {
    class func someTypeMethod() {
        print("someTypeMethod")
    }
}

SomeClass.someTypeMethod()

// Strings and Characters
let wiseWords = "\"我是要成为海贼王的男人\" - Jude"
let dollarSign = "\u{24}"

var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("nothing")
}

var varibleString = "Horse"
varibleString += " and carrige"

let constantString = "Hightlander"
//constantString += "and "

let yenSign: Character = "%"
let unusualMenagerie = "Koala, Snail, Penguin ,Dromedary"
//print("unusualMenagerie has \(countElements(unusualMenagerie)) ")

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2
var instruction = "look over"
instruction += string2

let exclamationMark: Character = "!"
welcome.append(exclamationMark)

let multiplier = 3
let message = "\(multiplier) * 2.5 = \(Double(multiplier) * 2.5)"

import Foundation

let normal = "Could you help me, please?"
let shouty = normal.uppercaseString
let whispered = normal.lowercaseString


// unicode
let dogString = "Dog!"
for codeUnit in dogString.utf8 {
    print("\(codeUnit)")
}

// SubScripts

//subscript(index: Int) -> Int{
//    get {
//        
//    }
//    
//    set(newValue){
//        
//    }
//}

struct TimesTable {
    let mutiplier: Int
    subscript(Index:Int) ->Int {
        return multiplier * Index
    }
}

let threeTimesTable = TimesTable(mutiplier: 3)
print("3de6bei is \(threeTimesTable[6])")

var numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
numberOfLegs["bird"] = 2

// Inheritance

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        
    }
}

let someVehicle = Vehicle()
print("vehicle: \(someVehicle.description)")

class Bicycle: Vehicle {
    var hasBasked = false
}

let bicycle = Bicycle()
bicycle.hasBasked = true

bicycle.currentSpeed = 15.0
print("bicycle: \(bicycle.description)")

// overrideing
class Train: Vehicle {
    override func makeNoise() {
        print("choo choo")
    }
}

let train = Train()
train.makeNoise()

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("car: \(car.description)")

class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("automaticCar: \(automatic.description)")




