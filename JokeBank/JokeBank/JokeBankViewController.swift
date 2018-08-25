//
//  JokeBankViewController.swift
//  JokeBank
//
//  Created by radhika santapuri on 8/17/18.
//  Copyright © 2018 radhika santapuri. All rights reserved.
//

import UIKit

class JokeBankViewController: UIViewController {
    
    
    
        @IBOutlet weak var displayJoke: UITextView?
    
    var joke = Joke()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = joke.title
        
        displayJoke?.text = joke.title
        displayJoke?.text = joke.text
        
    }
    
    

}
