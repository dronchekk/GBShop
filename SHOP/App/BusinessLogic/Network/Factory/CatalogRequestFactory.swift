//
//  CatalogRequestFactory.swift
//  SHOP
//
//  Created by Andrey Rachitskiy on 06.05.2022.
//

import Foundation
import Alamofire

protocol CatalogRequestFactory {
    func getCatalog(pageNumber: Int, categoryId: Int, completionHandler: @escaping (AFDataResponse<[Good]>) -> Void)
}
