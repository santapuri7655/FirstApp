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
        
        if let totalText = totalTextField?.text {
            if let total = Double(totalText) {
                if let tipText = tipTextField?.text {
                    if let tipPercentage = Double(tipText){
                        
                        let tip = total * tipPercentage/100
                        
                        if tip >= 50.0 {
                            myFirstLabel?.text = String("Tip: $\(tip)‼️")
                        } else {
                            myFirstLabel?.text = String("Tip: $\(tip)")
                        }
                    }
                }
            }
        }
    }
}

