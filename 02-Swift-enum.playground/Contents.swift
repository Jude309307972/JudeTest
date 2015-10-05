//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 枚举 Enumerations

enum SomeEnumeration {
    
}

enum CompassPoint {
    case North
    case South
    case East
    case West
} // 不会被附初值

enum Planet {
    case Mercury, Venus, Earth
}

var directionToHead = CompassPoint.West
directionToHead = .East

directionToHead = .South

switch directionToHead {
case .North:
    print("north")
case .South:
    print("south")
case .East:
    print("east")
case .West:
    print("west")
}

let somePlanet = Planet.Earth

switch somePlanet {
case .Earth :
    print("earth")
default:
    print("not a safe place for humans")
}

enum Barcode {
    case UPCA(Int, Int, Int)
    case QRCode(String)
}

var productBarcode = Barcode.UPCA(8, 85900_51226, 3)

productBarcode = .QRCode("abcdefghijklmnop")

switch productBarcode {
case .UPCA(let numberSystem, let identifier, let check):
    print("upc-a with value of \(numberSystem),\(identifier),\(check)")
case .QRCode(let productCode):
    print("ar code with value of \(productCode)")
}

// 原始值 raw values

enum ASCIIControlCharacter: Character {
    case Tab = "\t"
    case LineFeed = "\n"
    case CarriageReturn = "\r"
}

enum Planet1:Int {
    case Mercury = 1, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Nepture
}

let earthsOrder = Planet1.Earth.rawValue
let possiblePlanet = Planet1(rawValue: 7)

//let positionToFind = 9
//if let somePlanet = Planet1(rawValue: positionToFind))_ = {
//    switch somePlanet {
//    case .Earth:
//        print("mostly harmless")
//    default:
//        print("not a safe place")
//    }
//} else {
//    print("vvvv")
//}

// 闭包 closures
let names = ["Chris","Alex","Ewa","Barry","Daniella"]
func backwards(s1:String, s2:String) ->Bool {
    return s1 > s2
}

//var reversed = sorted(names,{(s1: String, s2: String) -> Bool in return s1 > s2})

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 :20)

// 可选类型 optionals
let possibleNumber = "123"
var convertedNumber = Int?()
convertedNumber = 1

if convertedNumber != nil {
    print("\(possibleNumber) has an integer value of \(convertedNumber!)")
} else {
    print("could not")
}

var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveAnswer: String?
let possibleString: String? = "an optional string"
print(possibleString!)
let assumedString: String! = "an implicitly umwrapped optional string"
print(assumedString)

if (assumedString != nil) {
    print(assumedString)
}

var numbers = [20, 19, 7, 12]
numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
})

numbers.map({
    number in 3 * number
})

numbers.map {(number: Int) -> Double in
    if(number % 2) == 0 {
        return 0
    } else {
        return Double (number)
    }
}

numbers.map{ number in
    return 3 * number
}


// 捕获值
func makeIncrementor(forIncrement amout: Int) -> ()->Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amout
        return runningTotal
    }
    return incrementor
}

let incrementByTen = makeIncrementor(forIncrement: 10)

incrementByTen()
incrementByTen()
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementor(forIncrement: 7)
incrementBySeven()

let alsoIncrementByten = incrementByTen
alsoIncrementByten()


