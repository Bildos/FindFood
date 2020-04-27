//
//  IngridientsTableViewCell.swift
//  FindFood
//
//  Created by Андрей on 4/27/20.
//  Copyright © 2020 Andry Borisov. All rights reserved.
//

import UIKit

class IngridientsTableViewCell: UITableViewCell {

    @IBOutlet weak var ingridientText: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        ingridientText.text = "Изделия макаронные группад RU высший сорт. ГОСТ 31743 COСTAB: МУКА из твёрдой пшеницы для макаронных изделий высшего сорта, вода питьевая."
    }


    
}
