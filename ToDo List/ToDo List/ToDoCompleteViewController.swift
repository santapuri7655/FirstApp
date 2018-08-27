//
//  ToDoCompleteViewController.swift
//  ToDo List
//
//  Created by radhika santapuri on 8/27/18.
//  Copyright © 2018 radhika santapuri. All rights reserved.
//

import UIKit

class ToDoCompleteViewController: UIViewController {
    
    @IBOutlet weak var ItemName: UILabel?
    
    var toDo = ToDo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ItemName?.text = toDo.name
    }
    
    
    @IBAction func pressComplete(_ sender: Any) {
    }
    
}
