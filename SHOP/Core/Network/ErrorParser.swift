//
//  ErrorParser.swift
//  GeekBrainsShop
//
//  Created by Andrey Rachitskiy on 04.05.2022.
//

import Foundation

class ErrorParser: AbstractErrorParser {
    func parse(_ result: Error) -> Error {
        return result
    }

    func parse(response _: HTTPURLResponse?, data _: Data?, error: Error?) -> Error? {
        return error
    }
}
