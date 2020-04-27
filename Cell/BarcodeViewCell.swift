//
//  BarcodeViewCell.swift
//  FindFood
//
//  Created by Андрей on 4/27/20.
//  Copyright © 2020 Andry Borisov. All rights reserved.
//

import UIKit

class BarcodeViewCell: UITableViewCell {

   

    @IBOutlet weak var secondText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        secondText.text = "737628064502"
    }


}
