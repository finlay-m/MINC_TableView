//
//  ViewController.swift
//  MINC_TableView
//
//  Created by Finlay MacGregor on 9/14/20.
//  Copyright © 2020 Finlay MacGregor. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var peopleTableView: UITableView!
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    // declares array of strings, () creates the array (initializes?)
    var peoplenames = [String]()
    var peopledone = [Bool]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // vem har koll p[ inneh[llet?
        peopleTableView.dataSource = self
        // not required
        peopleTableView.delegate = self
        
        peoplenames.append("Abbby")
        peoplenames.append("Bert")
        peoplenames.append("Callum")
        peoplenames.append("Duncan")
        peoplenames.append("Emil")
        
        peopledone.append(false)
        peopledone.append(true)
        peopledone.append(false)
        peopledone.append(false)
        peopledone.append(false)
        
    }
    
    // is not promising a value, it is promising the existence of the text field
    // difference between zero, empty, and non-existence
    @IBAction func addName(_ sender: Any) {
        
        // if they click on Add button with empty text box, it doens't add it to list
        // return returns to beginning of addName function
        if(nameTextField.text == "")
        {
            return
        }
        
        // adds text from text box into list
        peoplenames.append(nameTextField.text!)
        peopledone.append(false)
        
        // without reload, the programme does not react to the addition of info
        peopleTableView.reloadData()
        
        // to save the names input: you can use firebase, userdefaults (list, small amount of data, core data (for advanced, a lot of use of data)
        
        // removes the text in the text box after it is added
        nameTextField.text = ""
    }
    

    
   
    
    // did select row at function, for clicking on row
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // now the row that you click on is logged in terminal
        print("Du ar tryckt på rad nummer " + String(indexPath.row))
        
        // don't tell table view to remove row, it is only graphical
        // the way to change rows is to change the array, but that doesn't change the screen
        // this changes the array
        // peoplenames.remove(at: indexPath.row)
        // this updates the screen
        // peopleTableView.reloadData()
        
        // click on a row to turn it from red to green
        // peopledone[indexPath.row] = true
        
        // click on row to toggle between red and green
        if(peopledone[indexPath.row] == true){
            peopledone[indexPath.row] = false
        } else {
            peopledone[indexPath.row] = true
        }
        
        peopleTableView.reloadData()
        
    }
    
    
}


