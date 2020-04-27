//
//  ProductModel.swift
//  FindFood
//
//  Created by Андрей on 4/27/20.
//  Copyright © 2020 Andry Borisov. All rights reserved.
//

import Foundation

struct ProductModel: Codable {
    let statusVerbose: String
    let product: Product?
    let code: String
    let status: Int

    enum CodingKeys: String, CodingKey {
        case statusVerbose = "status_verbose"
        case product, code, status
    }
}

struct Product: Codable {
    let countries: String?
    let ingredientsText: String?
    let imageSmallUrl: String?
    let productName: String?
    let packaging: String?
    
    enum CodingKeys: String, CodingKey {
        case ingredientsText = "ingredients_text"
        case imageSmallUrl = "image_small_url"
        case productName = "product_name"
        case countries, packaging
    }
}
