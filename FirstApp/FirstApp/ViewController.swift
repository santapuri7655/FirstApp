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
        
        guard let totalText = Double(totalTextField?.text ?? "0"),
                let tipText = Double(tipTextField?.text ?? "0")
            else {
                return
        }
        let tip = totalText * tipText/100
            if tip >= 50.0 {
                myFirstLabel?.text = String("Tip: $\(tip)‼️")
            } else {
                myFirstLabel?.text = String("Tip: $\(tip)")
            }
    }
}

