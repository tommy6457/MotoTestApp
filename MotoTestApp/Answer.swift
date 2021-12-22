//
//  Answer.swift
//  MotoTestApp
//
//  Created by 蔡尚諺 on 2021/12/21.
//

import Foundation
struct Answer {
    
    var answerText = ""
    var right: Bool
    
    init(answerText: String = "", right: Bool) {
        self.answerText = answerText
        self.right = right
    }
}
