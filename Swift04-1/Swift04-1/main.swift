//
//  main.swift
//  Swift04-1
//
//  Created by 徐遵成 on 15/10/7.
//  Copyright © 2015年 Jude. All rights reserved.
//

import Foundation

func add(var a:Int, b:Int) -> Int{
    a = 1
    return a + b
}

func add(a:Int, b:Int, c: Int) -> Int {
    return a + b + c
}

func printString(strings: String...){
    for string  in strings{
        print(string)
    }
}

func add(addFun:(Int,Int,Int) -> Int, a:Int, b:Int) {
    print(addFun(a,b,50))
}

func minus(a: Int,b:Int) ->Int {
    return a - b
}

enum FunctionType {
    case Add
    case Minus
}

func chooseFuntion(funType: FunctionType) ->(Int,Int) ->Int {
    return funType == FunctionType.Add ? add: minus
}

func mainFunction(input:Int) ->Int {
    func internalFucntion(input: Int) ->Int {
        return input - 1
    }
    return internalFucntion(input - 1)
}

var a = 10, b = 20

print(add(10, b: 20))

print(add(a, b: b , c: 10))

printString("haha", "hehe")
printString()

add(add, a: a , b: b)

let fun = chooseFuntion(FunctionType.Minus)
print(fun(a,b))


