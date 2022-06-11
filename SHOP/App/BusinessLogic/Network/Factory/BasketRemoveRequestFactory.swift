//
//  BasketRemoveRequestFactory.swift
//  SHOP
//
//  Created by Andrey Rachitskiy on 28.05.2022.
//

import Foundation
import Alamofire

protocol BasketRemoveRequestFactory {
    func remove(productId: Int, completionHandler: @escaping (AFDataResponse<DefaultResponseResult>) -> Void)
}
