//
//  GameData.swift
//  Agree
//
//  Created by Morten Due Christiansen on 16/11/2017.
//  Copyright © 2017 Morten Due Christiansen. All rights reserved.
//

import Foundation
import UIKit
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
    
    var player1Image: UIImage?
    var player2Image: UIImage?
    
    var selectedQuestions = [Question]()
    
    var allQuestions = [Question]()
    
    init(){
        initQuestions()
    }
    
 
    func gamesSelected() {
        for question in allQuestions {
            if question.selected {
                selectedQuestions.append(question)
                print(question.text)
            }
        }
    }
    
    func initQuestions(){
        allQuestions.append(Question("Hvem skider mest lang?"))
        allQuestions.append(Question("Hvem larmer mest? meget længere meget meget længere"))
        allQuestions.append(Question("Hvem er klogest?"))
        allQuestions.append(Question("Hvem laver den dårligste mad?"))
        allQuestions.append(Question("Hvem er dårligst til at køre bil?"))
        allQuestions.append(Question("Hvem havde lagt en lort på muldvarpens hoved?"))
        allQuestions.append(Question("Hvem går altid under bordet først?"))
        allQuestions.append(Question("Hvem kan synge det bedste cover af 'Born in the USA'?"))
        
        
    }
}


