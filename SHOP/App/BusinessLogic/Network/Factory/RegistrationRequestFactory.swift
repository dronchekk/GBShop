//
//  RegistrationRequestFactory.swift
//  GeekBrainsShop
//
//  Created by Andrey Rachitskiy on 04.05.2022.
//

import Foundation
import Alamofire

protocol RegistrationRequestFactory {
    func register(user: RequestUserData, completionHandler: @escaping (AFDataResponse<RegistrationResult>) -> Void)
}
