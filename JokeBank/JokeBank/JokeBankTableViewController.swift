//
//  JokeBankTableViewController.swift
//  JokeBank
//
//  Created by radhika santapuri on 8/16/18.
//  Copyright © 2018 radhika santapuri. All rights reserved.
//

import UIKit

class JokeBankTableViewController: UITableViewController {
    
    struct JokeBank {
        static let CleanJokes = "clean jokes"
        static let JokeOfTheDay = "joke of the day"
        static let LatestJokes = "latest jokes"
        static let FamilyJokes = "family jokes"
    }
    
    var Jokes = [JokeBank.CleanJokes, JokeBank.JokeOfTheDay, JokeBank.LatestJokes, JokeBank.FamilyJokes]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //How many?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Jokes.count //Returning number of things to view inside of the table
    }

    //What goes inside?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        //print(indexPath.row) --> cronological sequence of number of items in an Array. Prints 0,1,2,3,4 --> number of elements in an array.
        
        cell.textLabel?.text = Jokes[indexPath.row]

        return cell
    }
    
    //inside this func -> what happens when you tap on a cell in function
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped")
        print(indexPath.row)
        
        let selectedJoke = Jokes[indexPath.row]
        
        performSegue(withIdentifier: "moveToJokeDefinition" , sender: selectedJoke)
        //withIdentifier: attributes inspector > indetifier > "identifier name"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let jokeVC = segue.destination as? JokeBankViewController {
            
            if let selectedJoke = sender as? String {
                jokeVC.joke = selectedJoke
            }
            
            
        }
    }

}
