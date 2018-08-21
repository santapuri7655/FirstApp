//
//  JokeBankViewController.swift
//  JokeBank
//
//  Created by radhika santapuri on 8/17/18.
//  Copyright © 2018 radhika santapuri. All rights reserved.
//

import UIKit

class JokeBankViewController: UIViewController {
    
    struct JokeDefinition {
        static let cleanJokes = "A child asked his father, How were people born? So his father said, Adam and Eve made babies, then their babies became adults and made babies, and so on. The child then went to his mother, asked her the same question and she told him, We were monkeys then we evolved to become like we are now. The child ran back to his father and said, You lied to me! His father replied, No, your mom was talking about her side of the family."
        static let JokeOfTheDay = "No jokes found matching your search terms."
        static let LatestJokes = ""
    }
    
        @IBOutlet weak var displayJoke: UITextView!
    
    var joke = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        title = joke
    
        if joke == JokeBankTableViewController.JokeBank.CleanJokes {
            displayJoke.text = JokeDefinition.cleanJokes
        }
        
    }
    
    

}
