//
//  SHOPTests.swift
//  SHOPTests
//
//  Created by Andrey Rachitskiy on 05.05.2022.
//

import XCTest
@testable import SHOP

class AuthTests: XCTestCase {

    let requestFactory = RequestFactory()
    let timeout: TimeInterval = 3

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testLogin() throws {
        let exp = expectation(description: "testLogin")
        let request = requestFactory.makeAuthRequestFatory()

        request.login(userName: "Vasya", password: "password") { response in
            switch response.result {
            case .success(_): break
            case .failure:
                XCTFail()
            }
            exp.fulfill()
        }
        waitForExpectations(timeout: timeout)
    }

    func testLogOut() throws {
        let exp = expectation(description: "testLogOut")
        let request = requestFactory.makeLogOutRequestFactory()

        request.logOut(userId: 1) { response in
            switch response.result {
            case .success(_): break
            case .failure:
                XCTFail()
            }
            exp.fulfill()
        }
        waitForExpectations(timeout: timeout)
    }

    func testRegistration() throws {
        let exp = expectation(description: "testRegistration")
        let request = requestFactory.makeRegistrationRequestFactory()
        let userData = RequestUserData.getFakerUserData()

        request.register(user: userData) { response in
            switch response.result {
            case .success(_): break
            case .failure:
                XCTFail()
            }
            exp.fulfill()
        }
        waitForExpectations(timeout: timeout)
    }

    func testChangeUserData() throws {
        let exp = expectation(description: "testChangeUserData")
        let request = requestFactory.makeChangeUserDataFactory()
        let userData = RequestUserData.getFakerUserData()
        var responseDataAssert: Int = 0

        request.change(user: userData) { response in
            switch response.result {
            case let .success(regData):
                responseDataAssert = regData.result
            case .failure:
                XCTFail()
            }
            exp.fulfill()
        }
        waitForExpectations(timeout: timeout)
        XCTAssertEqual(responseDataAssert, 1, "We should have response exactly 1.")
    }
}
