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
                         "Hvem bruger flest penge?",
                         "Hvem sender flest snaps fra toilettet?",
                         "Hvem har haft mest sex på en festival?",
                         "Hvem ser mest porno?",
                         "Hvem pjækker mest?",
                         "Hvem bruger mest tid foran computeren?",
                         "Hvem spiller mest computer?",
                         "Hvem bruger mest tid foran fjernsynet?",
                         "Hvem hører mest musik?",
                         "Hvem abonnerer på flest streaming tjenester?",
                         "Hvem rejser mest?",
                         "Hvem ser bedst ud?",
                         "Hvem har den største selvironi?",
                         "Hvem har haft flest kærester?",
                         "Hvem har haft flest one night stands?",
                         "Hvem har haft flest kønssygdomme?",
                         "Hvem bruger længst tid i badet?",
                         "Hvem bruger længst tid på sit hår?",
                         "Hvem går mest i byen?",
                         "Hvem har den lækreste kæreste?",
                         "Hvem har den sejeste stil?",
                         "Hvem er i bedst form?",
                         "Hvem kan spise flest flødeboller på 1 minut?",
                         "Hvem sover mest?",
                         "Hvem er den bedste handyman?",
                         "Hvem er bedst til at lave mad?",
                         "Hvem bestiller mest mad udefra?",
                         "Hvem spiser mest sushi?",
                         "Hvem har haft det længste forhold?",
                         "Hvem kommer først op og slås i byen?",
                         "Hvem lyver oftest?",
                         "Hvem er sjovest?",
                         "Hvem har flest tætte venner?",
                         "Hvem har flest venner på facebook?",
                         "Hvem har flest følgere på Instagram?",
                         "Hvem er mest selvglad?",
                         "Hvem er heldigst?",
                         "Hvem har betalt flest penge til et fitnesscenter uden at bruge det?",
                         "Hvem har været mest på skadestuen som barn?",
                         "Hvem snorker mest?",
                         "Hvem er mest gæstfri?"]
    
    var activeResult: Result?
    
    init(){
        initQuestions()
    }
    
    func reset() {
        self.player1Name = ""
        self.player2Name = ""
        self.selectedQuestions.removeAll()
    }
    func gamesSelected() -> Bool{
        var tempQuestions = [Question]()
        for question in allQuestions {
            if question.selected {
                tempQuestions.append(question)
                print(question.text)
            }
        }
        if tempQuestions.count >= 5{
            selectedQuestions = tempQuestions
            return true
        }
        else {
            return false
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



