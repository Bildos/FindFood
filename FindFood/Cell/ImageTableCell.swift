//
//  ImageTableCell.swift
//  FindFood
//
//  Created by Андрей on 4/27/20.
//  Copyright © 2020 Andry Borisov. All rights reserved.
//

import UIKit

class ImageTableCell: UITableViewCell {

    @IBOutlet weak var customImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        customImageView.image = UIImage(named: "makfa")
        customImageView.contentMode = .scaleAspectFit
        
        
    }

    
}
