//
//  ViewController.swift
//  Calculator
//
//  Created by Fırat Kahvecioğlu on 23.05.2022.
//

import UIKit 

class Controller: UIViewController {
    var calc = Calculator()
    
    var first = ""
    var second = ""
    var function = ""
    var result = 0.0
    var userInput = ""

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    @IBOutlet weak var calculatorDisplay: UILabel!
    @IBAction func clearButton(_ sender: Any) {
        first = ""
        second = ""
        function = ""
        userInput = ""
        result = 0.0
        calculatorDisplay.text = "0"
    }
    
    @IBAction func percentButton(_ sender: Any) {
        function = "%"
        first = userInput
        userInput = ""
    }
    
    @IBAction func divideButton(_ sender: Any) {
        function = "/"
        first = userInput
        userInput = ""
        
    }
    
    @IBAction func multiplyButton(_ sender: Any) {
        function = "*"
        first = userInput
        userInput = ""
    }
    
    @IBAction func minusButton(_ sender: Any) {
        function = "-"
        first = userInput
        userInput = ""
    }
    
    @IBAction func plusButton(_ sender: Any) {
        function = "+"
        first = userInput
        userInput = ""
    }
    
    @IBAction func equalButton(_ sender: Any) {
        second = userInput
        var firstInput = 0.0
        var secondInput = 0.0
        firstInput = Double(first)!
        secondInput = Double(second)!
        if(function == "+" ){
            result = calc.plus(number1: firstInput, number2: secondInput)
            calculatorDisplay.text = String(result)
        }else if(function == "-"){
            result = calc.minus(number1: firstInput, number2: secondInput)
            calculatorDisplay.text = String(result)
        }else if(function == "*"){
            result = calc.multiply(number1: firstInput, number2: secondInput)
            calculatorDisplay.text = String(result)
        }else if(function == "%"){
            result = calc.percent(number1: firstInput, number2: secondInput)
            calculatorDisplay.text = String(result)
        }else{
            result = calc.divide(number1: firstInput, number2: secondInput)
            calculatorDisplay.text = String(result)
            
        }
            
                
            
          
        
        
    }
    
    @IBAction func decimalButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "."
        calculatorDisplay.text! += userInput
    }
    
    @IBAction func zeroButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "0"
        calculatorDisplay.text! += userInput
    }
    
    
    @IBAction func oneButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "1"
        calculatorDisplay.text! += userInput
    }
    
    
    @IBAction func twoButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "2"
        calculatorDisplay.text! += userInput
    }
    
    @IBAction func threeButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "3"
        calculatorDisplay.text! += userInput
    }
    
    @IBAction func fourButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "4"
        calculatorDisplay.text! += userInput
    }
    
    @IBAction func fiveButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "5"
        calculatorDisplay.text! += userInput
    }
    
    
    @IBAction func sixButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "6"
        calculatorDisplay.text! += userInput
    }
    
    @IBAction func sevenButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "7"
        calculatorDisplay.text! += userInput
    }
    
    @IBAction func eightButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "8"
        calculatorDisplay.text! += userInput
    }
    
    @IBAction func nineButton(_ sender: Any) {
        calculatorDisplay.text = ""
        userInput += "9"
        calculatorDisplay.text! += userInput
    }
    
    
    
    
    
    
}

