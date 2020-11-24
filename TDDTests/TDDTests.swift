//
//  TDDTests.swift
//  TDDTests
//
//  Created by Ashish Katiyar on 24/11/20.
//  Copyright © 2020 Ashish Katiyar. All rights reserved.
//

import XCTest
@testable import TDD

class TDDTests: XCTestCase {
    
    func test_start_withNoQuestion() {
        let router = RouterSpy()
        let sut = Flow(questions: [], router: router)
        
        sut.start()
        XCTAssertEqual(router.routedQuestionCount, 0)
    }
    
    func test_start_withQuestion() {
        let router = RouterSpy()
        let sut = Flow(questions: ["Q1"], router: router)
        
        sut.start()
        XCTAssertEqual(router.routedQuestionCount, 1)
    }
}

class RouterSpy: Router {
    var routedQuestionCount: Int = 0
    var routedQuestion: String? = nil
    
    func routedTo(question: String) {
        routedQuestionCount += 1
        routedQuestion = question
    }
}
