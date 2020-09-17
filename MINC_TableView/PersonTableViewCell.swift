//
//  PersonTableViewCell.swift
//  MINC_TableView
//
//  Created by Finlay MacGregor on 9/14/20.
//  Copyright © 2020 Finlay MacGregor. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var personLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var doneView: UIView!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
