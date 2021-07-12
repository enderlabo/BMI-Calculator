//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Laborit on 11/06/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var BMI: [String] = [ "UNDERWEIGHT", "NORMAL", "OVERWEIGHT", "OBESE", "EXTREMLY OBESE" ]

    @IBOutlet weak var backgroundView: UIImageView!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var bmiMsgLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        
        //BMI Colors
        if bmiValue! < "18.5" {
            bmiMsgLabel.text = BMI[0]
            backgroundView.backgroundColor = .blue
            
        } else if bmiValue == "18.5" || bmiValue! < "24.9" {
            bmiMsgLabel.text = BMI[1]
            backgroundView.backgroundColor = .green
            
        } else if bmiValue == "25" || bmiValue! < "29.9" {
            bmiMsgLabel.text = BMI[2]
            backgroundView.backgroundColor = .systemYellow
            
        } else if bmiValue == "30" || bmiValue! < "34.9" {
            bmiMsgLabel.text = BMI[3]
            backgroundView.backgroundColor = .orange
            
        } else if bmiValue! > "35" {
            bmiMsgLabel.text = BMI[4]
            backgroundView.backgroundColor = .red
        }
        
//        switch bmiValue {
//        case bmiValue == "30" :
//            bmiMsgLabel.text = BMI[4]
//            backgroundView.backgroundColor = .red
//        default:
//            <#code#>
//        }
    }
    
    @IBAction func recalculateBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
