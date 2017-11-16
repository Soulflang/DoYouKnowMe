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
    
    

    
    override func viewWillAppear(_ animated: Bool) {
        
        
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
        return playerName
    }
    
    
    
    
    
    
    
    
    
    
    
}
