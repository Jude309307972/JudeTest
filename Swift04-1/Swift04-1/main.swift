//
//  main.swift
//  Swift04-1
//
//  Created by 徐遵成 on 15/10/7.
//  Copyright © 2015年 Jude. All rights reserved.
//

import Foundation

print("Hello, World!")

var ps = Person()
let a = ps.a

print(a)
var b = ps.b

ps.name = "rose"

//搞清楚下面的输出
print(b) //nil
print(ps.b!) //rose
print(ps.name)//jack


//调用类型属性
print(++Person.classValue)
let classValue = Person.classValue++
print(classValue)

//属性监视器
ps.age = 100

ps.age = 101
