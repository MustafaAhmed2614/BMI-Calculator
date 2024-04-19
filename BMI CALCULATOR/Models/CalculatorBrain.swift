//
//  CalculatorBrain.swift
//  BMI CALCULATOR
//
//  Created by Mustafa Ahmed on 27/03/2024.
//

import Foundation
import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
        }
    func getAdvice() ->String
    {
        return bmi?.advice ?? "NO ADVICE"
    }
    func getColor() ->UIColor
    {
        return bmi?.color ?? UIColor.white
    }
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
//       bmi = weight / (height * height)
        let bmiValue = weight / (height * height)
           if bmiValue < 18.5
           {
               bmi = BMI(value: bmiValue, advice: "Eat more Pies!!", color: UIColor.blue)
           }
           else if bmiValue < 24.9
           {
               bmi = BMI(value: bmiValue, advice: "Fit as fiddle!!", color: UIColor.green)
           }
           else
           {
               bmi = BMI(value: bmiValue, advice: "Eat less Pies!!", color: UIColor.red)
           }

       }
    }

