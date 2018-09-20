//
//  AddToDoItemViewController.swift
//  ToDo List
//
//  Created by radhika santapuri on 8/26/18.
//  Copyright © 2018 radhika santapuri. All rights reserved.
//

import UIKit

class AddToDoItemViewController: UIViewController {
    
    
    @IBOutlet weak var EnterItemName: UITextField?
    @IBOutlet weak var Important: UISwitch?
    
    var toDoVC : ToDoTableViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ClickAdd(_ sender: Any) {
        guard let name = EnterItemName?.text,
            let imp = Important?.isOn,
        let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
            else {
                return
        }
            let newToDo = ToDo(context: context)
            
            newToDo.important = imp
            newToDo.name = name
        
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
        
        navigationController?.popViewController(animated: true)
    }
    
}
