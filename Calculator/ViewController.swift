//
//  ViewController.swift
//  Calculator
//
//  Created by HuuLuong on 7/16/16.
//  Copyright © 2016 CanhDang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var distanceBetweenInputTextFieldAndResultLabel: NSLayoutConstraint!
    
    @IBOutlet weak var distanceBetweenResultLabelAndMiddleView: NSLayoutConstraint!
    
    @IBOutlet weak var tf_input: UITextField!
    
    @IBOutlet weak var lbl_result: UILabel!
    
    
    var isTappingNumber: Bool = false
    var isEndOperation: Bool = true
    var firstNumber: Double = 0
    var secondNumber: Double = 0
    var operation: String = ""
    var isNewOperation: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tf_input.userInteractionEnabled  = false
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        
        updateConstraints()
    }
   
    
   func updateConstraints() -> Void {
        
        let scale = UIScreen.mainScreen().bounds.size.height / 667
        
       distanceBetweenResultLabelAndMiddleView.constant = UIScreen.mainScreen().bounds.size.height > 480 ? distanceBetweenResultLabelAndMiddleView.constant * scale : distanceBetweenResultLabelAndMiddleView.constant * 0.1
      distanceBetweenInputTextFieldAndResultLabel.constant = UIScreen.mainScreen().bounds.size.height > 480 ? distanceBetweenInputTextFieldAndResultLabel.constant * scale : distanceBetweenInputTextFieldAndResultLabel.constant * 0.1
    
    }

    
    @IBAction func numberAction(sender: UIButton) {
        
        let number = sender.currentTitle
        isNewOperation = true
        
        if isTappingNumber {
            if (tf_input.text == "." && number != ".") || (tf_input != ".") {
                tf_input.text = tf_input.text! + number!
            }
        } else {
            tf_input.text = number
            isTappingNumber = true
        }
        
        
    }
    
    
    @IBAction func operatorsAction(sender: UIButton) {
        operation = sender.currentTitle!
        
        if let inputOperation = Double(tf_input.text!) {
            
            if (isEndOperation || isNewOperation)  {
                firstNumber = inputOperation
                isEndOperation = false
            } else {
                firstNumber = Double(lbl_result.text!)!
            }
            
        } else {
            print("Nhap so truoc khi tinh")
        }

        
        isTappingNumber = false
        
        if operation == "%" {
            action_Equal(sender)
        } else if operation == "+/-" {
            action_Equal(sender)
        }
        
        
    }
    
    @IBAction func action_Equal(sender: UIButton) {
        
        isTappingNumber = false
        
        var result: Double = 0
        
        if let realSecondNumber = Double(tf_input.text!) {
            secondNumber = realSecondNumber
        }
        
        switch operation {
        
        case "+":
            result = firstNumber + secondNumber
        
        case "-":
            result = firstNumber - secondNumber
        
        case "*":
            result = firstNumber * secondNumber
            
        case "/":
            result = firstNumber / secondNumber
        
        case "%":
            result = firstNumber / 100
        
        case "+/-":
            if firstNumber < 0 {
                firstNumber = fabs(firstNumber)
                result = firstNumber
            } else {
                firstNumber = -1 * firstNumber
                result = firstNumber
            }
            
            tf_input.text = String(result)
            
        default:
            print("Error Operation")
        }
        
          lbl_result.text = String(result)
          isNewOperation = false
    }
    
    @IBAction func action_AC(sender: UIButton) {
        
        firstNumber = 0
        secondNumber = 0
        tf_input.text = ""
        lbl_result.text = "0"
        isEndOperation = true
        isNewOperation = true
    }
    
    
}

