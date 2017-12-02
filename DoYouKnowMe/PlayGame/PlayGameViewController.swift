//
//  PlayGameViewController.swift
//  DoYouKnowMe
//
//  Created by Mathias  R. Larsen on 09/11/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit
import RealmSwift

class PlayGameViewController: UIViewController {
    
    private var turnNumber = 0
    private var noOfQuestions = 0
    private var currentQuestion = 0
    private var names: [String] = []
    private var currentPlayerIndex: Int = 99
    
    
    @IBOutlet weak var answer1: UIView!
    @IBOutlet weak var answer2: UIView!
    @IBOutlet weak var answer1Name: UILabel!
    @IBOutlet weak var answer2Name: UILabel!
    @IBOutlet weak var answer1Image: UIImageView!
    @IBOutlet weak var answer2Image: UIImageView!
    
    
    @IBOutlet var Gameview: UIView!
    @IBOutlet weak var turnLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let answer1Tap = UITapGestureRecognizer(target: self, action: #selector(self.answer1Tapped(sender:)))
        answer1.addGestureRecognizer(answer1Tap)
        
        let answer2Tap = UITapGestureRecognizer(target: self, action: #selector(self.answer2Tapped(sender:)))
        answer2.addGestureRecognizer(answer2Tap)
        
    }
    
    @objc func answer1Tapped(sender: UITapGestureRecognizer ){
        if(currentPlayerIndex==0){
            Game.sharedInstance.selectedQuestions[currentQuestion].p1Answer = names[0]
        }
        else{
            Game.sharedInstance.selectedQuestions[currentQuestion].p2Answer = names[0]
        }
        resolveNextTurn()
    }
    
    @objc func answer2Tapped(sender: UITapGestureRecognizer ){
        if(currentPlayerIndex==0){
            Game.sharedInstance.selectedQuestions[currentQuestion].p1Answer = names[1]
        }
        else{
            Game.sharedInstance.selectedQuestions[currentQuestion].p2Answer = names[1]
        }
        resolveNextTurn()
    }

    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        names.append(Game.sharedInstance.player1Name)
        names.append(Game.sharedInstance.player2Name)
    
        answer1Name.text = names[0]
        answer2Name.text = names[1]
        
        if let image = Game.sharedInstance.player1Image {
            answer1Image.image = image
        }
        
        if let image = Game.sharedInstance.player2Image {
            answer2Image.image = image
        }
        
        noOfQuestions = Game.sharedInstance.selectedQuestions.count
        print("No of questions selected \(noOfQuestions)")
        print(findStartingPlayer())
        print("Date giver: \(Date())")
        updateView(currentQuestion: Game.sharedInstance.selectedQuestions[currentQuestion].text, currentPlayer: names[currentPlayerIndex])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func writeToRealm(result: Result){
        let realm = try! Realm()
        try! realm.write {
            realm.add(result)
        }
    }
    
    func findStartingPlayer() -> String{
        let diceRoll = Int(arc4random_uniform(2))
        print("Diceroll: \(diceRoll)")
        let playerName = names[diceRoll]
        self.currentPlayerIndex = diceRoll
        
        return playerName
    }
    func updateView(currentQuestion: String, currentPlayer: String){
            self.turnLabel.text = "Player turn: " + currentPlayer
            self.questionLabel.text = currentQuestion
    }
    
    
    
    func checkQuestionAnswered(questionToCheck: Int)-> Bool{
        if((Game.sharedInstance.selectedQuestions[questionToCheck].p1Answer != "") && (Game.sharedInstance.selectedQuestions[questionToCheck].p2Answer != "")){
            currentQuestion += 1
            return true
        }
        else {
            return false
        }
        
    }
    func createResult(){
        let result = Result()
        for question in Game.sharedInstance.selectedQuestions {
            let q = Question()
            q.text = question.text
            q.p1Answer = question.p1Answer
            q.p2Answer = question.p2Answer
            result.questions.append(q)
        }
        result.player1 = Game.sharedInstance.player1Name
        result.player2 = Game.sharedInstance.player2Name
        writeToRealm(result: result)
        Game.sharedInstance.activeResult = result
    }
    
    func hasGameEnded() -> Bool {
        if currentQuestion+1 <= noOfQuestions {
            DispatchQueue.main.async{
            self.updateView(currentQuestion: Game.sharedInstance.selectedQuestions[self.currentQuestion].text, currentPlayer: self.names[self.currentPlayerIndex])
            }
            return false
        }
        else {
            //Her skal instantiering af næste view efter endt spil indsættes.
            createResult()
            self.navigationController?.pushViewController(ResultViewController(), animated: true)
            return true
        }
    }
    
    func resolveNextTurn(){
        print("Resolve kaldt")
        var check: Bool
            check = checkQuestionAnswered(questionToCheck: currentQuestion)
        print("Check Question status: \(check)")
            //Nedenstående skifter mellem spillerne
            currentPlayerIndex = 1 - currentPlayerIndex
        check = hasGameEnded()
        print("Check Game Ended status: \(check)")
        }
            
        
    }


