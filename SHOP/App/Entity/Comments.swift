//
//  Comments.swift
//  SHOP
//
//  Created by Andrey Rachitskiy on 29.05.2022.
//

import Foundation

struct Comments: Codable {
    let count: Int
    let offset: Int
    let items: [Comment]
}
