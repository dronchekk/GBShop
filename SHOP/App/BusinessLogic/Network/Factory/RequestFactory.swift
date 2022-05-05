//
//  RequestFactory.swift
//  GeekBrainsShop
//
//  Created by Andrey Rachitskiy on 04.05.2022.
//

import Foundation
import Alamofire

class RequestFactory {
    func makeErrorParser() -> AbstractErrorParser {
        return ErrorParser()
    }

    lazy var commonSession: Session = {
        let configuration = URLSessionConfiguration.default
        configuration.httpShouldSetCookies = false
        configuration.headers = .default
        let manager = Session(configuration: configuration)
        return manager
    }()

    let sessionQueue = DispatchQueue.global(qos: .utility)

    func makeAuthRequestFatory() -> AuthRequestFactory {
        let errorParser = makeErrorParser()
        return Auth(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }

    func makeRegistrationRequestFactory() -> RegistrationRequestFactory {
        let errorParser = makeErrorParser()
        return Auth(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }

    func makeLogOutRequestFactory() -> LogOutRequestFactory {
        let errorParser = makeErrorParser()
        return Auth(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }

    func makeChangeUserDataFactory() -> ChangeUserDataRequestFactory {
        let errorParser = makeErrorParser()
        return Auth(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }
}
