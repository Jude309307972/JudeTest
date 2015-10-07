//
//  Subclass.swift
//  Swift04-1
//
//  Created by 徐遵成 on 15/10/7.
//  Copyright © 2015年 Jude. All rights reserved.
//

import Foundation

class Subclass: Base {
    
    var age:Int?
    init(name:String, age: Int) {
        super.init(name: name)
        self.age = age
    }
    
    deinit {
        print("subclas - deinit")
    }
}
