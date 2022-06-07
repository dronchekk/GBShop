//
//  ReviewRemoveRequestFactory.swift
//  SHOP
//
//  Created by Andrey Rachitskiy on 29.05.2022.
//

import Foundation
import Alamofire

protocol ReviewRemoveRequestFactory {
    func remove(commentId: Int, completionHandler: @escaping (AFDataResponse<DefaultResponseResult>) -> Void)
}
