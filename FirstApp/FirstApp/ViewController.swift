//
//  ViewController.swift
//  FirstApp
//
//  Created by radhika santapuri on 8/14/18.
//  Copyright © 2018 radhika santapuri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var totalTextField: UITextField? //UITestField!
    @IBOutlet weak var tipTextField: UITextField?   //UITestField!
    @IBOutlet weak var myFirstLabel: UILabel?       //UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(_ sender: Any) {
        let total = totalTextField, //Double(totalTextField.text!)!
        let tipPercentage = tipTextField/100.0 //Double(tipTextField.text!)!
        let tip = total * tipPercentage
        
        if tip >= 50.0 {
            myFirstLabel.text = String("Tip: $\(tip)‼️")
        } else {
            myFirstLabel.text = String("Tip: $\(tip)")
        }

    }
    
}

