//
//  ResultListViewController.swift
//  DoYouKnowMe
//
//  Created by Morten Due Christiansen on 30/11/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit
import RealmSwift
class ResultListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var resultsTable: UITableView!
    
    var results: Results<Result> {
        get {
            let realm = try! Realm()
            
            return realm.objects(Result.self).sorted(byKeyPath: "resultDate", ascending: false)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        resultsTable.register(UINib(nibName: "ResultListTableViewCell", bundle: nil), forCellReuseIdentifier: "ResultListCell")
        resultsTable.dataSource = self
        resultsTable.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(Int(results.count))
        return Int(results.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = resultsTable.dequeueReusableCell(withIdentifier: "ResultListCell") as! ResultListTableViewCell
        
        cell.p1Name.text = results[indexPath.row].player1
        cell.p2Name.text = results[indexPath.row].player2
        cell.noOfQuestions.text = String(results[indexPath.row].questions.count)
        cell.date.text = (results[indexPath.row].resultDate.description).prefix(16).description
        
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        Game.sharedInstance.activeResult = results[indexPath.row]
        
        navigationController?.pushViewController(ResultViewController(), animated: true)
    }

}
