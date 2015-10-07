//
//  main.swift
//  Swift04-1
//
//  Created by 徐遵成 on 15/10/7.
//  Copyright © 2015年 Jude. All rights reserved.
//

import Foundation

struct Person1 {
    var name = "John"
}

struct Dog {
    var name = "", age = 0
    init(name: String, age:Int){
        self.name = name
        self.age = age
    }
}

var ps = Person1()
print(ps.name)

var dog = Dog(name: "Kiti", age: 4)
print(dog)

var base = Base(name: "base")
var sub = Subclass(name: base.name!, age: 6)
print("\(sub.name),\(sub.age!)")

//base = Base(name: "otherBase")
sub = Subclass(name: base.name!, age: 16)
//print("\(sub.name!), \(sub.age!)")



