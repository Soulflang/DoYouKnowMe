//
//  GameData.swift
//  Agree
//
//  Created by Morten Due Christiansen on 16/11/2017.
//  Copyright © 2017 Morten Due Christiansen. All rights reserved.
//

import Foundation

class Question {
    
    init(_ question:String){
        text = question
    }
    var text = ""
    var selected = false
    var p1Answer = ""
    var p2Answer = ""
    
}

class Game {
    static var sharedInstance = Game()
    var player1Name = ""
    var player2Name = ""
    
    var selectedQuestions = [Question]()
    
    var allQuestions = [Question]()
    
    init(){
        initQuestions()
    }
    
 
    
    
    func initQuestions(){
        allQuestions.append(Question("Hvem skider mest lang?"))
        allQuestions.append(Question("Hvem larmer mest? meget længere meget meget længere"))
        allQuestions.append(Question("Hvem er klogest?"))
    }
}


