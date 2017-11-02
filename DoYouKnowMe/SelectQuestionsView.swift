//
//  SelectQuestionsView.swift
//  DoYouKnowMe
//
//  Created by Brian Christensen on 26/10/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit

class SelectQuestionsView: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    @IBOutlet weak var questionTableView: UITableView!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = questionTableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier") as! CustomTableViewCell //1.
        
        let text = data[indexPath.row] //2.
        
        cell.label.text = text //3.
        
        return cell //4.
    }
    
    private var data: [String] = []

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        for i in 0...1000 {
            data.append("\(i)")
        }
        
        questionTableView!.dataSource = self
questionTableView!.register(UINib(nibName: "CustomTableViewCell", bundle:nil), forCellReuseIdentifier: "cellReuseIdentifier")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    

 

}
