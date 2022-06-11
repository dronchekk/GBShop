//
//  BasketAddRequestFactory.swift
//  SHOP
//
//  Created by Andrey Rachitskiy on 28.05.2022.
//

import Foundation
import Alamofire

protocol BasketAddRequestFactory {
    func add(productId: Int, quantity: Int, completionHandler: @escaping (AFDataResponse<DefaultResponseResult>) -> Void)
}
