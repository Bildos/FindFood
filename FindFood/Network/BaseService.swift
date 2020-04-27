//
//  BaseService.swift
//  FindFood
//
//  Created by Андрей on 4/27/20.
//  Copyright © 2020 Andry Borisov. All rights reserved.
//
//https://world.openfoodfacts.org/api/v0/product/737628064502.json

import Foundation
import UIKit

class BaseService {
    
    func loadData(barcode: String,onComplete: @escaping (ProductModel) -> (Void),onError: @escaping (Error) -> (Void)) {
        let urlString = "https://world.openfoodfacts.org/api/v0/product/" + barcode + ".json"
        guard let url = URL(string: urlString) else { return }
        let task = URLSession.shared.dataTask(with: url) { (data, respons, error) in
            
            if let error = error {
                onError(error)
                return
            }
            guard let data = data else { return }
        
            guard let product = try? JSONDecoder().decode(ProductModel.self, from: data) else {
            print("could not decode")
                return }
            onComplete(product)
            if product.status == 0 {
                print("product not found")
            }
            dump(product)
        }
        task.resume()
    }
    
}
