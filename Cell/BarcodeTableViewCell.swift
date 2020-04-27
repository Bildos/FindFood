//
//  BarcodeTableViewCell.swift
//  FindFood
//
//  Created by Андрей on 4/27/20.
//  Copyright © 2020 Andry Borisov. All rights reserved.
//

import UIKit

class BarcodeTableViewCell: UITableViewCell {

    @IBOutlet weak var barcodeText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        barcodeText.text = "4601780000790"
    }


    
}
