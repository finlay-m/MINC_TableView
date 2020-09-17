//
//  ViewControllerTV.swift
//  MINC_TableView
//
//  Created by Finlay MacGregor on 9/17/20.
//  Copyright © 2020 Finlay MacGregor. All rights reserved.
//

import Foundation
// need to import UIKit library in this file to be able to use it
import UIKit

// use extension to keep from having a massive view controller code, can even be moved to different file
// can create an extention of something
// this makes it clearer where data source and delegate comes from
extension ViewController
{
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
           cell.personLabel.text = String(indexPath.row) + " " + peoplenames[indexPath.row]
           // + " " + String(indexPath.row)
           
           if(peopledone[indexPath.row] == true){
               cell.doneView.backgroundColor = UIColor.green
           } else {
               cell.doneView.backgroundColor = UIColor.red
           }
           
           return cell
       }
}
