//
//  tableViewController.swift
//  DoYouKnowMe
//
//  Created by Brian Christensen on 04/11/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource {
    
    private var data: [String] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...1000 {
            data.append("\(i)")
        }
        
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "cellReuseIdentifier")
        
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
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier") as! CustomTableViewCell
        
        let text = data[indexPath.row] + "\tkan vi lave en lang tekst uden det ser mærkeligt ud i vores table view iuhwrf iuhwf iherwfgi huieruhg iuherg ihueir ghiuhreg iuhergi hieurhg ihureg iherig heiurhg eiruhg uiehrg uihi eheruhg eio"
        
        cell.questionTextView.text = text
        
        return cell
        
    }
    


}
