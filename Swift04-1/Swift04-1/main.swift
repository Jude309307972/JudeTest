//
//  main.swift
//  Swift04-1
//
//  Created by 徐遵成 on 15/10/7.
//  Copyright © 2015年 Jude. All rights reserved.
//

import Foundation

@objc protocol CertificateGenerator {
    func certificate() -> String
    optional func optionalful()
}

class EncryptionGenerator: CertificateGenerator {
    var publicKey = "UUID"
    let privateKey = "123 - 456 - 789"
    @objc func certificate() -> String {
        return publicKey + privateKey
    }
}

let generator = EncryptionGenerator()
print(generator.certificate())

protocol MutatingProtocol {
    mutating func turn()
}

enum OnOffSwitch: MutatingProtocol {
    case Off, On
    mutating func turn() {
        switch self {
        case .Off:
            self = On
        case .On:
            self = Off
        }
    }
}

var lightSwitch = OnOffSwitch.On
lightSwitch.turn()
print(lightSwitch)

protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c) % m)
        return lastRandom / m
    }
}

class Dice {
    let sides: Int
    let generator: RandomNumberGenerator    //代理对象
    init(sides: Int, generator: RandomNumberGenerator) {
        self.sides = sides
        self.generator = generator
    }
    func roll() -> Int{
        return Int(generator.random() * Double(sides)) + 1
    }
}


var d6 = Dice(sides: 6, generator: LinearCongruentialGenerator())
for _ in 1...10 {
    print("Randomdiceroll is \(d6.roll())")
    
}

