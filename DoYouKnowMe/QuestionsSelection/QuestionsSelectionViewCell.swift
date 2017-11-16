//
//  QuestionsSelectionViewCell.swift
//  Agree
//
//  Created by Morten Due Christiansen on 16/11/2017.
//  Copyright © 2017 Morten Due Christiansen. All rights reserved.
//

import UIKit

class QuestionsSelectionViewCell: UITableViewCell {


    @IBOutlet weak var txtText: UILabel!
    var index: Int = -1
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }
    
    @IBAction func switchPressed(_ sender: UISwitch) {
        Game.sharedInstance.allQuestions[index].selected = sender.isOn
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
