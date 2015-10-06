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

