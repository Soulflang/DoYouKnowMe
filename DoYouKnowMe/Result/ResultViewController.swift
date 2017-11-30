//
//  tableViewController.swift
//  DoYouKnowMe
//
//  Created by Brian Christensen on 04/11/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit
import RealmSwift

class ResultViewController: UIViewController, UITableViewDataSource {
    
    private var questions: [String] = []
    private var answerP1: [String] = []
    private var answerP2: [String] = []
    var result: Result?
    
    
   
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var player1Answered: UILabel!
    @IBOutlet weak var player2Answered: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getResults()
        //player1Answered.text = Game.sharedInstance.player1Name + " har svaret"
        //player2Answered.text = Game.sharedInstance.player2Name + " har svaret"
        player1Answered.text = (result?.player1)! + " har svaret"
        player2Answered.text = (result?.player2)! + " har svaret"
        
        //let numberOfQuestions  = result?.questions.count
        
        for question in (result?.questions)!{
            questions.append("\(question.text)")
            answerP1.append(question.p1Answer)
            answerP2.append(question.p2Answer)
            
        }
        
        
        
        tableView.register(UINib(nibName: "ResultTableViewCell", bundle: nil), forCellReuseIdentifier: "resultCell")
        
        tableView.dataSource = self
        
    }
    
    func getResults(){
        let realm = try! Realm()
        let results = realm.objects(Result.self)
        print(Int(results.count))
        result = results[results.endIndex-1]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func returnPushed(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
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
        let answer1 = answerP1[indexPath.row]
        let answer2 = answerP2[indexPath.row]
        
        cell.questionTextView.text = text
        cell.answerPlayer1.text = answer1
        cell.answerPlayer2.text = answer2
        return cell
        
    }
    
   
    


}
