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
    private var names: [String] = []
    private var questions: [String] = []
    private var startingPlayerIndex: Int = 99
    
    
    @IBOutlet var Gameview: UIView!
    @IBOutlet weak var Answer1: UIButton!
    @IBOutlet weak var Answer2: UIButton!
    @IBOutlet weak var turnLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        
       // Answer1.setTitle(names[0], for: .normal)
       // Answer2.setTitle(names[1], for: .normal)
        
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
        let diceRoll = Int(arc4random_uniform(1))
        let playerName = names[diceRoll]
        self.startingPlayerIndex = diceRoll
        let alert = UIAlertController(title: "Starting player found",
                                      message: "Starting player is " + playerName,
                                      preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Okay",
                                       style: .default)
        alert.addAction(saveAction)
        present(alert, animated: true)
        return playerName
    }
    func updateView(currentQuestion: String, currentPlayer: String){
        self.turnLabel.text = "Player turn: " + currentPlayer
        self.questionLabel.text = currentQuestion
        
    }
    
    
    
    
    
    
    
    
    
    
    
}
