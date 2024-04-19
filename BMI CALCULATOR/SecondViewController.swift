//
//  SecondViewController.swift
//  BMI CALCULATOR
//
//  Created by Mustafa Ahmed on 26/03/2024.
//

import UIKit

class SecondViewController: UIViewController {
    var bmiValue: String?
    
    var advice: String?
    var color: UIColor?

    
    @IBOutlet weak var RecalculateButton: UIButton!
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        RecalculateButton.layer.cornerRadius = 16
        RecalculateButton.layer.masksToBounds = true
        
        
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
