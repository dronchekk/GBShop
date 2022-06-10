//
//  Comment.swift
//  SHOP
//
//  Created by Andrey Rachitskiy on 29.05.2022.
//

import Foundation

struct Comment: Codable {
    let id = UUID()
    var userId: Int
    var text: String
    
    enum CodingKeys: String, CodingKey {
        case userId = "id_user"
        case text
    }
}
