//
//  SecondViewController.swift
//  FindFood
//
//  Created by Андрей on 4/26/20.
//  Copyright © 2020 Andry Borisov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "ImageTableCell", bundle: nil), forCellReuseIdentifier: "imageCell")
        tableView.register(UINib(nibName: "BarcodeTableViewCell", bundle: nil), forCellReuseIdentifier: "barcodeCell")
        tableView.register(UINib(nibName: "CountriTableViewCell", bundle: nil), forCellReuseIdentifier: "countriCell")
        tableView.register(UINib(nibName: "IngridientsTableViewCell", bundle: nil), forCellReuseIdentifier: "ingridientCell")
        tableView.register(UINib(nibName: "NameTableViewCell", bundle: nil), forCellReuseIdentifier: "nameProductCell")
        
        
        
    }

}

extension SecondViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "imageCell", for: indexPath)
            return cell
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "nameProductCell", for: indexPath)
            return cell
        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ingridientCell", for: indexPath)
            return cell
        } else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "countriCell", for: indexPath)
            return cell
        } else if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "barcodeCell", for: indexPath)
            return cell
        } else {
            return UITableViewCell()
        }
    }
}
