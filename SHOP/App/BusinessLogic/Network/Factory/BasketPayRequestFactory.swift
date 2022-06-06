//
//  BasketPayRequestFactory.swift
//  SHOP
//
//  Created by Andrey Rachitskiy on 28.05.2022.
//

import Foundation
import Alamofire

protocol BasketPayRequestFactory {
    func pay(completionHandler: @escaping (AFDataResponse<DefaultResponseResult>) -> Void)
}
