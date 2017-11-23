//
//  PlayGameViewController.swift
//  DoYouKnowMe
//
//  Created by Mathias  R. Larsen on 09/11/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit

class PlayGameViewController: UIViewController {
    
    private var turnNumber = 0
    private var noOfQuestions = 0
    private var currentQuestion = 0
    private var names: [String] = []
    private var currentPlayerIndex: Int = 99
    
    
    @IBOutlet var Gameview: UIView!
    @IBOutlet weak var Answer1: UIButton!
    @IBOutlet weak var Answer2: UIButton!
    @IBOutlet weak var turnLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBAction func AnswerBtn1(_ sender: UIButton) {
        if(currentPlayerIndex==0){
            Game.sharedInstance.allQuestions[currentQuestion].p1Answer = names[0]
        }
        else{
            Game.sharedInstance.allQuestions[currentQuestion].p2Answer = names[0]
        }
        resolveNextTurn()
        
    }
    @IBAction func AnswerBtn2(_ sender: UIButton) {
        if(currentPlayerIndex==0){
            Game.sharedInstance.allQuestions[currentQuestion].p1Answer = names[1]
        }
        else{
            Game.sharedInstance.allQuestions[currentQuestion].p2Answer = names[1]
        }
        resolveNextTurn()
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        //names.append(Game.sharedInstance.player1Name)
        //names.append(Game.sharedInstance.player2Name)
        names.append("Mathias")
        names.append("Brian")
        Answer1.setTitle(names[0], for: .normal)
        Answer2.setTitle(names[1], for: .normal)
        noOfQuestions = Game.sharedInstance.allQuestions.count
        print("No of questions selected \(noOfQuestions)")
        print(findStartingPlayer())
        updateView(currentQuestion: Game.sharedInstance.allQuestions[currentQuestion].text, currentPlayer: names[currentPlayerIndex])
        
       
        
    }
    override func viewDidAppear(_ animated: Bool) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        if((Game.sharedInstance.allQuestions[questionToCheck].p1Answer != "") && (Game.sharedInstance.allQuestions[questionToCheck].p2Answer != "")){
            currentQuestion += 1
            return true
        }
        else {
            return false
        }
        
    }
    func hasGameEnded() -> Bool {
        if currentQuestion+1 <= noOfQuestions {
            DispatchQueue.main.async{
            self.updateView(currentQuestion: Game.sharedInstance.allQuestions[self.currentQuestion].text, currentPlayer: self.names[self.currentPlayerIndex])
            }
            return false
        }
        else {
            //Her skal instantiering af næste view efter endt spil indsættes.
            return true
        }
    }
    func updateView(){
        
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

