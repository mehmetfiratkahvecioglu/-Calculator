//
//  calculator.swift
//  Calculator
//
//  Created by Fırat Kahvecioğlu on 24.05.2022.
//

import Foundation

class Calculator{
    
    func percent(number1:Double,number2:Double) -> Double {
        let result = number1.truncatingRemainder(dividingBy: number2  )
        return result
    }
   
    func divide(number1:Double,number2:Double) -> Double {
       
        if (number1 > 0 && number2 > 0){
            let result = number1 / number2
            return result
                    }else{return 0}
    }
    
    func multiply(number1:Double,number2:Double) -> Double {
        let result = number1 * number2
        return result
    }
    
    func minus(number1:Double,number2:Double) -> Double {
        let result = number1 - number2
        return result
    }
    
    func plus(number1:Double,number2:Double) -> Double {
        let result = number1 +  number2
        return result
    }
    
    
    
    
    
    
}
