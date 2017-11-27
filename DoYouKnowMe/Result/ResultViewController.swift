//
//  tableViewController.swift
//  DoYouKnowMe
//
//  Created by Brian Christensen on 04/11/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController, UITableViewDataSource {
    
    private var questions: [String] = []
    private var answerP1: [Int] = []
    private var answerP2: [Int] = []
    
   
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var player1Answered: UILabel!
    @IBOutlet weak var player2Answered: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player1Answered.text = Game.sharedInstance.player1Name + " har svaret"
        player2Answered.text = Game.sharedInstance.player2Name + " har svaret"
        
        let numberOfQuestions  = Game.sharedInstance.selectedQuestions.count
        
        for i in 0..<numberOfQuestions{
            questions.append("\(i + 1) \(Game.sharedInstance.selectedQuestions[i].text)")
        }
        
        tableView.register(UINib(nibName: "ResultTableViewCell", bundle: nil), forCellReuseIdentifier: "resultCell")
        
        tableView.dataSource = self
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultCell") as! ResultTableViewCell
        
        let text = questions[indexPath.row]
        
        cell.questionTextView.text = text
        
        return cell
        
    }
    
   
    


}
