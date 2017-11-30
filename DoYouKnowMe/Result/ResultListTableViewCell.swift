//
//  ResultListTableViewCell.swift
//  DoYouKnowMe
//
//  Created by Morten Due Christiansen on 30/11/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit

class ResultListTableViewCell: UITableViewCell {

    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var noOfQuestions: UILabel!
    @IBOutlet weak var p1Name: UILabel!
    @IBOutlet weak var p2Name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
