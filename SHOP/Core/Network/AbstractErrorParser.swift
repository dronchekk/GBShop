//
//  AbstractErrorParser.swift
//  GeekBrainsShop
//
//  Created by Andrey Rachitskiy on 04.05.2022.
//

import Foundation

protocol AbstractErrorParser {
    func parse(_ result: Error) -> Error
    func parse(response: HTTPURLResponse?, data: Data?, error: Error?) -> Error?
}
