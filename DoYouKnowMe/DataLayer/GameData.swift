//
//  GameData.swift
//  Agree
//
//  Created by Morten Due Christiansen on 16/11/2017.
//  Copyright © 2017 Morten Due Christiansen. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift
import Realm


class Question: Object{
    @objc dynamic var text = ""
    @objc dynamic var selected = false
    @objc dynamic var p1Answer = ""
    @objc dynamic var p2Answer = ""
    
}

class Game {
    static var sharedInstance = Game()
    var player1Name = ""
    var player2Name = ""
    var player1Image: UIImage?
    var player2Image: UIImage?
    
    var selectedQuestions = [Question]()
    var allQuestions = [Question]()
    
    let questionTexts = ["Hvem drikker mest?",
                         "Hvem har haft sex med flest personer?",
                         "Hvem går mest i bad?",
                         "Hvem gør mest rent?",
                         "Hvem er dårligst til at køre bil?",
                         "Hvem har den sødeste tand?",
                         "Hvem går under bordet først?",
                         "Hvem kan synge det bedste cover af 'Born in the USA'?",
                         "Hvem bruger flest penge?"]
    
    var activeResult: Result?
    
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
        for text in questionTexts {
            let question = Question()
            question.text = text
            allQuestions.append(question)
        }
    }
}

class Result: Object {
    @objc dynamic var resultDate = Date()
    let questions = List<Question>()
    @objc dynamic var player1 = String()
    @objc dynamic var player2 = String()
}



