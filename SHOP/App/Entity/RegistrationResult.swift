//
//  RegistrationResult.swift
//  GeekBrainsShop
//
//  Created by Andrey Rachitskiy on 04.05.2022.
//

import Foundation

struct RegistrationResult: Codable {
    let result: Int
    let userMessage: String

    enum CodingKeys: String, CodingKey {
        case result
        case userMessage = "user_message"
    }
}
