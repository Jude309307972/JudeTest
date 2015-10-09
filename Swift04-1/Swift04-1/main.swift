//
//  main.swift
//  Swift04-1
//
//  Created by 徐遵成 on 15/10/7.
//  Copyright © 2015年 Jude. All rights reserved.
//

import Foundation

protocol someProtocol {
    var readAndWrite: Int {
        get
        set
    }
    
    var onlyRead: Int {
        get
    }
}

protocol classProtocol {
    static var classValue: Int {
        get
    }
}

struct SomeStruct:someProtocol {
    var selfValue: Int = 0
    var readAndWrite: Int {
        get {
            return 123
        }
        set {
            selfValue = newValue
        }
    }
    
    var onlyRead: Int {
        get {
            return 2015
        }
    }
}

class SomeClass:NSObject, classProtocol {
    class  var classValue:Int {
        get {
            return 1000
        }
    }
}

var someStruct = SomeStruct()
someStruct.readAndWrite = 789
print(someStruct.readAndWrite)
print(someStruct.selfValue)
print(someStruct.onlyRead)

print(SomeClass.classValue)

