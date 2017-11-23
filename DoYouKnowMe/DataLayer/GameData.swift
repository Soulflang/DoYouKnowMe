//
//  GameData.swift
//  Agree
//
//  Created by Morten Due Christiansen on 16/11/2017.
//  Copyright © 2017 Morten Due Christiansen. All rights reserved.
//

import Foundation
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
    
    
    var selectedQuestions = [Question]()
    
    var allQuestions = [Question]()
    
    init(){
       // initQuestions()
    }
    
    
 
    func gamesSelected() {
        for question in allQuestions {
            if question.selected {
                selectedQuestions.append(question)
                print(question.text)
            }
        }
    }
    
//    func initQuestions(){
//        allQuestions.append(Question("Hvem drikker mest?"))
//        allQuestions.append(Question("Hvem har haft sex med flest personer?"))
//        allQuestions.append(Question("Hvem går mest i bad?"))
//        allQuestions.append(Question("Hvem gør mest rent?"))
//        allQuestions.append(Question("Hvem er dårligst til at køre bil?"))
//        allQuestions.append(Question("Hvem har den sødeste tand?"))
//        allQuestions.append(Question("Hvem går under bordet først?"))
//        allQuestions.append(Question("Hvem kan synge det bedste cover af 'Born in the USA'?"))
//        allQuestions.append(Question("Hvem bruger flest penge?"))
//
//    }
}



