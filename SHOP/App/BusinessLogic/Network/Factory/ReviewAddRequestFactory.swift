//
//  ReviewAddRequestFactory.swift
//  SHOP
//
//  Created by Andrey Rachitskiy on 29.05.2022.
//

import Foundation
import Alamofire

protocol ReviewAddRequestFactory {
    func add(userId: Int, text: String, completionHandler: @escaping (AFDataResponse<DefaultResponseResult>) -> Void)
}
