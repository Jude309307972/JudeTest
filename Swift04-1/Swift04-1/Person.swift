//
//  Person.swift
//  Swift04-1
//
//  Created by 徐遵成 on 15/10/7.
//  Copyright © 2015年 Jude. All rights reserved.
//

import Cocoa

class Person: NSObject {
    
    let a:Int = 1
    var b:String?
    
    var name:String {
        get {
            return "Jude"
        }
        
        set {
            b = newValue
        }
    }
    
    class var classValue:Int {
        get{
            return 2015
        }
        set(newValue){
            
        }
    }
    
    var age:Int? {
        willSet(newAge) {
            print("newAge is \(newAge!)")
        }
        
        didSet(oldAge) {
            if let sure = oldAge {
                print("oldAge is \(sure)")
            } else {
                print("oldAge is nil")
            }
        }
    }
    
}