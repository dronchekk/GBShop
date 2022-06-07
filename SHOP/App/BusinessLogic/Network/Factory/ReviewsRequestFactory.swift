//
//  ReviewsRequestFactory.swift
//  SHOP
//
//  Created by Andrey Rachitskiy on 29.05.2022.
//

import Foundation
import Alamofire

protocol ReviewsRequestFactory {
    func list(completionHandler: @escaping (AFDataResponse<Comments>) -> Void)
}
