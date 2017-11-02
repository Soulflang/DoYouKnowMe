//
//  TableViewCell.swift
//  DoYouKnowMe
//
//  Created by Brian Christensen on 31/10/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit

struct cellData {
    let text : String!
    let select : Bool
}
class TableViewController: UITableViewController {
    
    var arrayOfCelldata = [cellData]()
    
    override func viewDidLoad() {
        arrayOfCelldata = [cellData(text : "hej", select : true),
                           cellData(text : "med", select : false),
                           cellData(text : "dig", select : true)]
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfCelldata.count
    }
    
    
    
    

}
