//
//  ViewController.swift
//  BMI CALCULATOR
//
//  Created by Mustafa Ahmed on 26/03/2024.
//

import UIKit

class ViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    var calculatorBrain = CalculatorBrain()
    

    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        
        calculateButton.layer.cornerRadius = 17
        calculateButton.layer.masksToBounds = true
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = (String(format: "%.2fm", sender.value))
    }
   
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = (String(format: "%.0fkg", sender.value))
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let height = (heightSlider.value)
        let weight = (weightSlider.value)
        calculatorBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}

