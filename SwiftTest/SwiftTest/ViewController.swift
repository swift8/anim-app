//
//  ViewController.swift
//  SwiftTest
//
//  Created by hzsydev on 15/6/4.
//  Copyright (c) 2015年 HZSY_XG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!

    //
    var haveNumber = false
    // 盛放数字的数组
    var operandStack = [Double]()
    
    //盛放运算符号的数组
    var operationMark:Int = 0

    // 可以加入数组
    var isAction = false
    
    //  数字按钮点击
    @IBAction func numberButtonAction(sender: UIButton) {
        if isAction {
            display.text = "0"
            haveNumber = false
            isAction = false
        }
        
        if haveNumber {
            display.text = display.text! + sender.currentTitle!
            enter()
        }else{
            display.text = sender.currentTitle!
            haveNumber = true
        }
        
    }
    
    // 运算
    @IBAction func operation(sender: UIButton) {
        
        operandStack.append(displayValue)
        isAction = true
        let tempStr = sender.currentTitle!
        switch tempStr {
            case "x":operationMark = 1
            case "/":operationMark = 2
            case "+":operationMark = 3
            case "-":operationMark = 4
        default:break
        }
        
    }
    
    @IBAction func clearButton(sender: AnyObject) {
        operandStack.removeAll(keepCapacity: false)
        display.text = "0"
    }
    // 运算
    func operationAction(operations: (Double,Double) -> Double){
        
        if operandStack.count >= 2 {
            displayValue = operations(operandStack.removeLast(), operandStack.removeLast())
            //enter()
            operandStack.append(displayValue)
        }
    }
    
    //
    var displayValue: Double {
        get{
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
        
        set{
            display.text = "\(newValue)"
            haveNumber = false
        }
    }

 
    //
    @IBAction func enter() {
        
        println("==========")
        switch operationMark{
            case 1 :operationAction({$0 * $1})
            case 2 :operationAction({$1 / $0})
            case 3 :operationAction({$0 + $1})
            case 4 :operationAction({$1 - $0})
        default:break
        }
        operationMark = 0
    }
    

    
}

