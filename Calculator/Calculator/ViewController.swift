//
//  ViewController.swift
//  Calculator
//
//  Created by 徐遵成 on 15/10/1.
//  Copyright (c) 2015年 Jude. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber = false
    @IBAction func digit(sender: UIButton) {
        
        let digitNum = sender.currentTitle!
        print("digitNum = \(digitNum)");
        if userIsInTheMiddleOfTypingANumber {
             display.text = display.text! + digitNum
        } else {
            display.text = digitNum
            userIsInTheMiddleOfTypingANumber = true
        }
    }
    // 强语言类型
    var appendStack = Array<Double>()
    // 计算属性
    var displayValue:Double {
        get{
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
        set{
            display.text = "\(newValue)"
            userIsInTheMiddleOfTypingANumber = false
        }
    }

    @IBAction func enter() {
        userIsInTheMiddleOfTypingANumber = false
        appendStack.append(displayValue)
        print("appendStack = \(appendStack)")
    }
    

    @IBAction func operate(sender: UIButton) {
        let operation = sender.currentTitle!
        switch operation {
        case "×":
            performOperation{$0 * $1}
            
//            if appendStack.count >= 2 {
//                displayValue = appendStack.removeLast() * appendStack.removeLast()
//                enter()
//            }
            
        case "÷":
             performOperation {$1 / $0}
        case "+":
              performOperation {$0 + $1}
        case "−":
              performOperation {$1 - $0}
            
        default :break
    }
  }
    
    func performOperation(operation:(Double,Double)->Double)
    {
        if appendStack.count >= 2 {
            displayValue = operation(appendStack.removeLast(),appendStack.removeLast())
            enter()
        }
    }
    func testPrint() ->()
    {
        print("testGitHubCommit!")
    }
}
