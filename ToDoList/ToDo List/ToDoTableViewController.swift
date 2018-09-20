//
//  ToDoTableViewController.swift
//  ToDo List
//
//  Created by radhika santapuri on 8/26/18.
//  Copyright © 2018 radhika santapuri. All rights reserved.
//

import UIKit

class ToDoTableViewController: UITableViewController {
    
    var toDos = [ToDo]()

    override func viewWillAppear(_ animated: Bool) {
        getToDos()
    }
    
    func getToDos() {
        guard let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext,
        let toDosFromCoreData = try? context.fetch(ToDo.fetchRequest()),
        let tempToDos = toDosFromCoreData as? [ToDo]
            else {
                return
        }
                    toDos = tempToDos
                    tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = toDos[indexPath.row].name
        
        let currentToDo = toDos[indexPath.row]
        
        if let name = currentToDo.name
        {
            if currentToDo.important {
                cell.textLabel?.text = "❗️" + name
            } else {
                cell.textLabel?.text = name
            }
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
