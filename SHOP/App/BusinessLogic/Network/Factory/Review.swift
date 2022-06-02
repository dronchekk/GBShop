//
//  Review.swift
//  SHOP
//
//  Created by Andrey Rachitskiy on 29.05.2022.
//

import Foundation
import Alamofire

class Review: AbstractRequestFactory {
    let errorParser: AbstractErrorParser
    let sessionManager: Session
    let queue: DispatchQueue
    let baseUrl = URL(string: "https://dry-woodland-62768.herokuapp.com/ ")!

    init(errorParser: AbstractErrorParser, sessionManager: Session, queue: DispatchQueue = DispatchQueue.global(qos: .utility)) {
        self.errorParser = errorParser
        self.sessionManager = sessionManager
        self.queue = queue
    }
}

// MARK: get all reviews
extension Review {
    struct List: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .get
        let path: String = "reviews"
        var parameters: Parameters? {
            return nil
        }
    }
}

extension Review: ReviewsRequestFactory {
    func list(completionHandler: @escaping (AFDataResponse<Comments>) -> Void) {
        let requestModel = List(baseUrl: baseUrl)
        request(request: requestModel, completionHandler: completionHandler)
    }
}

// MARK: add review
extension Review {
    struct Add: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "add-review"

        let userId: Int
        let text: String
        var parameters: Parameters? {
            return [
                "id_user": userId,
                "text": text,]
        }
    }
}

extension Review: ReviewAddRequestFactory {
    func add(userId: Int, text: String, completionHandler: @escaping (AFDataResponse<DefaultResponseResult>) -> Void) {
        let requestModel = Add(baseUrl: baseUrl, userId: userId, text: text)
        request(request: requestModel, completionHandler: completionHandler)
    }
}

// MARK: remove review
extension Review {
    struct Remove: RequestRouter {
        let baseUrl: URL
        let method: HTTPMethod = .post
        let path: String = "remove-review"

        let commentId: Int
        var parameters: Parameters? {
            return ["id_comment": commentId,]
        }
    }
}

extension Review: ReviewRemoveRequestFactory {
    func remove(commentId: Int, completionHandler: @escaping (AFDataResponse<DefaultResponseResult>) -> Void) {
        let requestModel = Remove(baseUrl: baseUrl, commentId: commentId)
        request(request: requestModel, completionHandler: completionHandler)
    }
}
