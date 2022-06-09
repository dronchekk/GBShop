//
//  GoodRequestFactory.swift
//  SHOP
//
//  Created by Andrey Rachitskiy on 06.05.2022.
//

import Foundation
import Alamofire

protocol GoodRequestFactory {
    func getGood(productId: Int, completionHandler: @escaping (AFDataResponse<Good>) -> Void)
}
