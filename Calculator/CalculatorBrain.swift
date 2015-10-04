//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by 徐遵成 on 15/10/3.
//  Copyright © 2015年 Jude. All rights reserved.
//

import Foundation

class CalculatorBrain {
    
    var brain = CalculatorBrain()
    init() {
        knownOps["×"] = Op.BinaryOperation("×"){$0 * $1}
        knownOps["÷"] = Op.BinaryOperation("÷"){$1 / $0}
        knownOps["+"] = Op.BinaryOperation("+"){$0 + $1}
        knownOps["−"] = Op.BinaryOperation("−"){$1 - $0}
        knownOps["√"] = Op.UnaryOperation("√"){sqrt($0) }
    }
  private  enum Op {
        case Operand(Double)
        case UnaryOperation(String,Double ->Double)
        case BinaryOperation(String,(Double,Double) ->Double)
    }
    
   private var opStack = [Op]()
    func pushOperand(operand:Double){
        opStack.append(Op.Operand(operand))
    }
  private  var knownOps = [String:Op]()
    //var knownOps = Dictionary<String,Op>()
    func performOperation(symbol:String) {
        let option = knownOps[symbol]
    }
    private func evaluate(ops:[Op]) -> (result:Double?,remainingOps:[Op]){
        var remainingOps = ops
        if !ops.isEmpty{
            let op = remainingOps.removeLast()
            switch op {
            case .Operand(let operand):
                return (operand,remainingOps)
            case .UnaryOperation(_, let operation):
                let operandEvaluation = evaluate(remainingOps)
                if let operand = operandEvaluation.result {
                    return (operation(operand),operandEvaluation.remainingOps)
                }
            case .BinaryOperation(_, let operation):
                let op1Evaluation = evaluate(remainingOps)
                if let operand1 = op1Evaluation.result {
                    let op2Evaluation = evaluate(op1Evaluation.remainingOps)
                    if let operand2 = op2Evaluation.result{
                        return (operation(operand1,operand2),op2Evaluation.remainingOps)
                    }
                }
                
            }
        }
        
        return (nil,ops)
    }
    func evaluate()-> Double?{
        let (result,remainder) = evaluate(opStack)
        return result
    }
    
   

}
