//
//  Flow.swift
//  TDD
//
//  Created by Ashish Katiyar on 24/11/20.
//  Copyright © 2020 Ashish Katiyar. All rights reserved.
//

import UIKit

protocol Router {
    func routedTo(question: String)
}

class Flow {

    let router: Router
    let questions: [String]
    
    init(questions: [String], router: Router) {
        self.questions = questions
        self.router = router
    }
    
    func start() {
        if !self.questions.isEmpty {
            router.routedTo(question: "")
        }
    }
}
