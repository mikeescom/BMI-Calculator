//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Saavedra Lozano, Miguel on 9/5/24.
//

import UIKit

struct CalculatorBrain {
   
    var bmi: BMI?
    
    func getBMIValue() -> String {
        return String(format:"%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.gray
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight/pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more meet!", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are great!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less!", color: UIColor.red)
        }
    }
}
