//
//  Quiz.swift
//  SwiftQuiz
//
//  Created by Victor Feitosa on 05/12/21.
//

import Foundation

class Quiz {
    let question: String
    let options:  [String]
    private let correctedAnswer: String
    
    init(question: String, options: [String], correctedAnswer: String) {
        self.question = question
        self.options = options
        self.correctedAnswer = correctedAnswer
    }
    
    func validateOption(_ index: Int) -> Bool{
        let answer = options[index]
        return answer == self.correctedAnswer
    }
    
    deinit {
        print("Liberou quiz da memória")
    }
}
