//
//  main.swift
//  Swift04-1
//
//  Created by 徐遵成 on 15/10/7.
//  Copyright © 2015年 Jude. All rights reserved.
//

import Foundation

var names = ["Swift","Arial","Soga","Donary"]


// 一 使用函数
func backwards(firstString:String, secondString: String) -> Bool {
    return firstString > secondString
}

var reversed = names.sort(backwards)
print(reversed)

reversed = names.sort({
    (fir: String, sec: String) ->Bool in return fir < sec
})
print(reversed)

reversed = names.sort({
    (fir, sec) -> Bool in fir > sec
})
print(reversed)

reversed = names.sort({$0 > $1})

print(reversed)

let strings = names.map{
    (str: String) -> String in
    return str + "hehe"
}
print(strings)


