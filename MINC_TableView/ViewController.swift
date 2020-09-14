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

