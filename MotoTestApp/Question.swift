//
//  Question.swift
//  MotoTestApp
//
//  Created by 蔡尚諺 on 2021/12/21.
//

import Foundation

struct Question {
    
    var questionText = ""
    var answer = [Answer]()
    
    init(questionText: String = "", answer: [Answer] = [Answer]()) {
        self.questionText = questionText
        self.answer = answer.shuffled() //使用shuffled讓每次的answer順序都不一樣
    }
    
}
