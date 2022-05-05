//
//  LogOutRequestFactory.swift
//  GeekBrainsShop
//
//  Created by Andrey Rachitskiy on 04.05.2022.
//

import Foundation
import Alamofire

protocol LogOutRequestFactory {
    func logOut(userId: Int, completionHandler: @escaping (AFDataResponse<DefaultResponseResult>) -> Void)
}
