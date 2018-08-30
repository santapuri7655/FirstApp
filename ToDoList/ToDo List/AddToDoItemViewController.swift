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
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            let newToDo = ToDoCoreData(context: context)
            guard let name = EnterItemName?.text
                else {
                    return
            }
            
            newToDo.important = Important?.isOn ?? false
            newToDo.name = name
        }
        
        //toDoVC?.toDos.append(newToDo)
        //toDoVC?.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    
}
