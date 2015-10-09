//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol SomeProtocol {
    var mustBeSettalbe: Int {get set}
    var doesNotNeedToBeSettalbe: Int {get}
}

protocol AnotherProtocol {
    static var someTypeProperty: Int {get set}
}

protocol FullyNamed {
    var fullName: String {get}
}

struct Person:FullyNamed {
   // var fullName: String
    var fullName: String

}

let john = Person(fullName: "John appleseed")
print(john)

class Starship:FullyNamed {
    var prefix: String?
    var name: String
    init(name: String, prefix:String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    var fullName: String {
        return(prefix != nil ? prefix! + "" : "") + name
    }
}

var ncc1701 = Starship(name: "1", prefix: "uss")
print(ncc1701.fullName)

protocol somProtocol {
    static func someTypeMethod()
}

protocol RandomNumberGenerator{
    func random() ->Double
}

class LinearCongruentialGenerator: RandomNumberGenerator{
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c) % m)
        return lastRandom / m
    }
}

let generator = LinearCongruentialGenerator()
print("here is random number: \(generator.random())")
print("here is random number: \(generator.random())")

protocol Togglable{
    mutating func toggle()
}

enum OnOffSwitch: Togglable {
    case Off, On
    mutating func toggle() {
        switch self {
        case .Off:
            self = On
        case.On:
            self = Off
        }
    }
}

var lightSwicht = OnOffSwitch.Off
lightSwicht.toggle()

class Dice {
    let sides:Int
    let generator:RandomNumberGenerator
    
    init(sides: Int,genetator:RandomNumberGenerator) {
        self.sides = sides
        self.generator = genetator
    }
    func roll() -> Int{
        return Int(generator.random() * Double(sides)) + 1
    }
}


// 代理模式

protocol DiceGame {
    var dice: Dice {get}
    func play()
}

protocol DiceGameDelegate{
    func gameDidStart(game: DiceGame)
    func game(game: DiceGame, didStartNewTurnWithDiceRoll ditRoll: Int)
    func gameDidEnd(game:DiceGame)
}







