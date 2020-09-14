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
        
        // without reload, the programme does not react to the addition of info
        peopleTableView.reloadData()
        
        // to save the names input: you can use firebase, userdefaults (list, small amount of data, core data (for advanced, a lot of use of data)
        
        // removes the text in the text box after it is added
        nameTextField.text = ""
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return peoplenames.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // tableViewan and peopleTableView point to same thing within this function
        // this cycles through every row and reuses cells
        // this is where you define the cell as your customized cell type
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell") as! PersonTableViewCell
        
        // there is a built in cell.textLabel, but generally do not use it
        // indextPath.row
        cell.personLabel.text = peoplenames[indexPath.row]
        // + " " + String(indexPath.row)
        
        return cell
    }
    
}

