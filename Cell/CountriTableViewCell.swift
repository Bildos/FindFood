//
//  CountriTableViewCell.swift
//  FindFood
//
//  Created by Андрей on 4/27/20.
//  Copyright © 2020 Andry Borisov. All rights reserved.
//

import UIKit

class CountriTableViewCell: UITableViewCell {

    @IBOutlet weak var countriText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        countriText.text = "Россия"
    }
    
}
