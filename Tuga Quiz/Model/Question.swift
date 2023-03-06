//
//  Question.swift
//  Tuga Quiz
//
//  Created by João Carvalho on 05/03/2023.
//

import Foundation

struct Question {
    let text: String
    let answers: [String]
    let rightAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}
