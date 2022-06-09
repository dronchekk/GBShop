//
//  ChangeUserDataRequestFactory.swift
//  GeekBrainsShop
//
//  Created by Andrey Rachitskiy on 04.05.2022.
//

import Foundation
import Alamofire

protocol ChangeUserDataRequestFactory {
    func change(user: RequestUserData, completionHandler: @escaping (AFDataResponse<DefaultResponseResult>) -> Void)
}
