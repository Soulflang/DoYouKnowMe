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
    @IBOutlet weak var cbSelected: CheckBox!
    
    var delegate: UIViewController?
    var index: Int?{
        willSet {
           cbSelected.isChecked = Game.sharedInstance.allQuestions[newValue!].selected
        }
        
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }
    

    @IBAction func checkBoxPressed(_ sender: CheckBox) {
        print(sender.isChecked)
        Game.sharedInstance.allQuestions[index!].selected =  sender.isChecked
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
