//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Laborit on 11/06/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController{
    
    var bmiValue = "0.0"
    var BMI: [String] = [ "UNDERWEIGHT", "NORMAL", "OVERWEIGHT", "OBESE", "EXTREMLY OBESE" ]
    
    override func viewDidLoad() {
        //Create an View from Scratch.
        view.backgroundColor = .gray
        
        let label = UILabel()
        let labelBmiStatus = UILabel()
        
        label.text = bmiValue
        //BMI Colors
        if bmiValue < "18.5" {
            label.textColor = .blue
            labelBmiStatus.text = BMI[0]
            labelBmiStatus.textColor = .blue
        } else if bmiValue == "18.5" || bmiValue < "24.9" {
            label.textColor = .green
            labelBmiStatus.text = BMI[1]
            labelBmiStatus.textColor = .green
        } else if bmiValue == "25" || bmiValue < "29.9" {
            label.textColor = .yellow
            labelBmiStatus.text = BMI[2]
            labelBmiStatus.textColor = .yellow
        } else if bmiValue == "30" || bmiValue < "34.9" {
            label.textColor = .orange
            labelBmiStatus.text = BMI[3]
            labelBmiStatus.textColor = .orange
        } else if bmiValue > "35" {
            label.textColor = .red
            labelBmiStatus.text = BMI[4]
            labelBmiStatus.textColor = .red
        }
        
        
        label.frame = CGRect(x: 50, y: 0, width: 100, height: 50)
        labelBmiStatus.frame = CGRect(x: 50, y: 25, width: 100, height: 50)
        
        
        view.addSubview(label)
        view.addSubview(labelBmiStatus)
    }
}
