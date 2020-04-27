//
//  NameTableViewCell.swift
//  FindFood
//
//  Created by Андрей on 4/27/20.
//  Copyright © 2020 Andry Borisov. All rights reserved.
//

import UIKit

class NameTableViewCell: UITableViewCell {

    @IBOutlet weak var nameProductCell: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        nameProductCell.text = "Макароны Макфа"
    }

    
}
