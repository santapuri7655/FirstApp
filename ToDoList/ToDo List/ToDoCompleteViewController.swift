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
    
    var toDo: ToDo? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let toDo = toDo,
            let theName = toDo.name
            else {
                return
        }
        if toDo.important {
            ItemName?.text = "❗️" + theName
        } else {
            ItemName?.text = toDo.name
        }
    }
    
    @IBAction func pressComplete(_ sender: Any) {
       
        guard let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext,
         let toDo = toDo
            else {
                return
        }
        context.delete(toDo)
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
        navigationController?.popViewController(animated: true)
    }
    
}
