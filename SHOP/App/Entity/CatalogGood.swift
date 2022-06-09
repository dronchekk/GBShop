//
//  Good.swift
//  SHOP
//
//  Created by Andrey Rachitskiy on 06.05.2022.
//

import Foundation

struct Good: Codable {
    let id: Int
    let productName: String
    let productPrice: Double
    let imageUrl: String

    enum CodingKeys: String, CodingKey {
        case id = "id_product"
        case productName = "product_name"
        case productPrice = "price"
        case imageUrl = "image_url"
    }
}
