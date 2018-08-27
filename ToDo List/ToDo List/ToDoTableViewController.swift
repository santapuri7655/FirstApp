//
//  ToDoTableViewController.swift
//  ToDo List
//
//  Created by radhika santapuri on 8/26/18.
//  Copyright © 2018 radhika santapuri. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var toDos : [ToDo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let toDo1 = ToDo()
        toDo1.name = "Walk the dog"
        toDo1.important = false
        
        let toDo2 = ToDo()
        toDo2.name = "Buy Milk"
        toDo2.important = true
        
        toDos = [toDo1, toDo2]
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = toDos[indexPath.row].name
        
        let currentToDo = toDos[indexPath.row]
        
        if currentToDo.important {
            cell.textLabel?.text = "❗️" + currentToDo.name
        } else {
            cell.textLabel?.text = currentToDo.name
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedToDo = toDos[indexPath.row]
        performSegue(withIdentifier: "moveToComplete", sender: selectedToDo)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addToDo = segue.destination as? AddToDoItemViewController {
            addToDo.toDoVC = self
        }
        
        if let completeVC = segue.destination as? ToDoCompleteViewController {
            if let selectedToDo = sender as? ToDo {
              completeVC.toDo = selectedToDo
            }
        }
    }
}
