//
//  ViewController.swift
//  Calculator1
//
//  Created by GooJaYong on 2015. 11. 19..
//  Copyright © 2015년 GooJaYong. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var display: UILabel!

    var userIsIntheMiddleOfTypingNumber : Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        
        let digit = sender.currentTitle!
        
        if userIsIntheMiddleOfTypingNumber{
            display.text = display.text! + digit
        }else
        {
            display.text = digit
            userIsIntheMiddleOfTypingNumber = true
        }
        
    }
    
    @IBAction func operate(sender: AnyObject) {
        //let operation = sender.currentTitle!
        if userIsIntheMiddleOfTypingNumber{
            enter()
            
        }
            
//            case "/":
            
//            case "+":
//            case "-":
//            default:brea
    }
    
    
    
    var operandStack: Array <Double> = Array<Double>()
    
    @IBAction func enter() {
        
        userIsIntheMiddleOfTypingNumber = false
        operandStack.append(displayValue)
        print("operandStack = \(operandStack)")
    }
    
    var displayValue :Double{
        get{
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
        set{
            display.text = "\(newValue)"
            userIsIntheMiddleOfTypingNumber = false
        }
    
    }
}

