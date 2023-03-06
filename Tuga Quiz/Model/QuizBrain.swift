//
//  QuizBrain.swift
//  Tuga Quiz
//
//  Created by João Carvalho on 05/03/2023.
//

import Foundation

    var questionNumber = 0
    var score = 0

struct QuizBrain {
    let quiz = [
        Question(q: "Que parte da cidade de Lisboa foi reconstruída depois do terramoto segundo os planos de Marquês de Pombal?", a: ["Zona Expo", "Bairro Alto", "Baixa Pombalina"], correctAnswer: "Baixa Pombalina"),
        Question(q: "A República foi implantada em Portugal em:", a: ["1910", "1974", "1926"], correctAnswer: "1926")
        ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
        }
    
    func getAnswers() -> [String] {
            return quiz[questionNumber].answers
        }
    
    func getProgress() -> Float {
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
}

