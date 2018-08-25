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
    
    struct JokeDefinition {
        static let cleanJokes = "A child asked his father, How were people born? \n\n So his father said, Adam and Eve made babies, then their babies became adults and made babies, and so on. \n\nThe child then went to his mother, asked her the same question and she told him, We were monkeys then we evolved to become like we are now. \n\nThe child ran back to his father and said, You lied to me! His father replied, No, your mom was talking about her side of the family."
        static let JokeOfTheDay = "No jokes found matching your search terms."
        static let LatestJokes = "This is my latest joke"
        static let FamilyJokes = "Family jokes are fun."
    }
    
    var jokes : [Joke] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let joke1 = Joke()
        joke1.title = JokeBank.CleanJokes
        joke1.text = JokeDefinition.cleanJokes
        
        let joke2 = Joke()
        joke2.title = JokeBank.JokeOfTheDay
        joke2.text = JokeDefinition.JokeOfTheDay
        
        let joke3 = Joke()
        joke3.title = JokeBank.LatestJokes
        joke3.text = JokeDefinition.LatestJokes
        
        let joke4 = Joke()
        joke4.title = JokeBank.FamilyJokes
        joke4.text = JokeDefinition.FamilyJokes
        
        jokes = [joke1, joke2, joke3, joke4]
    }

    //How many?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jokes.count //Returning number of things to view inside of the table
    }

    //What goes inside?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        //print(indexPath.row) --> cronological sequence of number of items in an Array. Prints 0,1,2,3,4 --> number of elements in an array.
        
        cell.textLabel?.text = jokes[indexPath.row].title

        return cell
    }
    
    //inside this func -> what happens when you tap on a cell in function
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped")
        print(indexPath.row)
        
        let selectedJoke = jokes[indexPath.row]
        
        performSegue(withIdentifier: "moveToJokeDefinition" , sender: selectedJoke)
        //withIdentifier: attributes inspector > indetifier > "identifier name"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let jokeVC = segue.destination as? JokeBankViewController {
            
            if let selectedJoke = sender as? Joke {
                jokeVC.joke = selectedJoke
            }
        }
    }

}
