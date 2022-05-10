//
//  Goods.swift
//  SHOP
//
//  Created by Andrey Rachitskiy on 06.05.2022.
//

import Foundation
import Alamofire

class Goods: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: "https://raw.githubusercontent.com/GeekBrainsTutorial/online-store-api/master/responses/")!

    init(errorParser: AbstractErrorParser, sessionManager: Session, queue: DispatchQueue = DispatchQueue.global(qos: .utility)) {
        self.errorParser = errorParser
        self.sessionManager = sessionManager
        self.queue = queue
    }
}

// MARK: Get catalog goods
extension Goods {
    struct GetCatalog: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "catalogData.json"

        let pageNumber: Int
        let categoryId: Int
        var parameters: Parameters? {
            return [
                "page_number": pageNumber,
                "id_category": categoryId,
            ]
        }
    }
}

extension Goods: CatalogRequestFactory {
    func getCatalog(pageNumber: Int, categoryId: Int, completionHandler: @escaping (AFDataResponse<[CatalogGood]>) -> Void) {
        let requestModel = GetCatalog(baseUrl: baseUrl, pageNumber: pageNumber, categoryId: categoryId)
        request(request: requestModel, completionHandler: completionHandler)
    }
}

// MARK: Get Good
extension Goods {
    struct GetGood: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "getGoodById.json"

        let productId: Int
        var parameters: Parameters? {
            return ["id_product": productId,]
        }
    }
}

extension Goods: GoodRequestFactory {
    func getGood(productId: Int, completionHandler: @escaping (AFDataResponse<Good>) -> Void) {
        let requestModel = GetGood(baseUrl: baseUrl, productId: productId)
        request(request: requestModel, completionHandler: completionHandler)
    }
}
