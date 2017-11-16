//
//  Question.swift
//  DoYouKnowMe
//
//  Created by Mathias R. Larsen on 16/11/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import Foundation
class Question {
    
    
    
    private var Question: String?
    private var Answer1: Int?
    private var Answer2: Int?
    
    func Agreement() -> Bool{
        if Answer1 == Answer2 {
            return true
        }
        else {return false}
    }
}
