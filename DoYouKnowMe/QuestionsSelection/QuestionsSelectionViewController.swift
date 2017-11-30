//
//  QuestionsSelectionViewController.swift
//  Agree
//
//  Created by Morten Due Christiansen on 16/11/2017.
//  Copyright © 2017 Morten Due Christiansen. All rights reserved.
//

import UIKit

class QuestionsSelectionViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: "QuestionsSelectionViewCell", bundle: nil), forCellReuseIdentifier: "QuestionCell")
        tableView.dataSource = self
    }

    @IBAction func startGamePressed(_ sender: Any) {
        if Game.sharedInstance.gamesSelected() == true {
             self.navigationController?.pushViewController(PlayGameViewController(), animated: true)
        }
        else {
            let alert = UIAlertController(title: "Not enough questions selected",
                                          message: "You have to choose at least 5 questions to play",
                                          preferredStyle: .alert)
            
            let saveAction = UIAlertAction(title: "Okay",
                                           style: .default)
            alert.addAction(saveAction)
            present(alert, animated: true)
        }
       
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Game.sharedInstance.allQuestions.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "QuestionCell") as! QuestionsSelectionViewCell

        cell.txtText.text = Game.sharedInstance.allQuestions[indexPath.row].text
        cell.index = indexPath.row
        cell.delegate = self
        return cell
        
    }
    func noOfQuestionsSelected() {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
