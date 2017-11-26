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
    @IBOutlet weak var checkbox: UIButton!
    
    var delegate: UIViewController?
    
    var index: Int?{
        willSet {
           checkbox.isSelected = Game.sharedInstance.allQuestions[newValue!].selected
        }
        
    }

    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }
    

    @IBAction func checkboxPressed(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
        Game.sharedInstance.allQuestions[index!].selected =  sender.isSelected
    }
    //    @IBAction func checkBoxPressed(_ sender: CheckBox) {
//        print("er checkbox checked: \(sender.isChecked)")
//        Game.sharedInstance.allQuestions[index!].selected =  sender
//    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        //super.setSelected(selected, animated: animated)
        if(!selected){
            return
        }
        let alert = UIAlertController(title: "Spørgsmål",
                                        message: txtText.text,
                                        preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Okay",
                                       style: .default)
        alert.addAction(saveAction)
        delegate?.present(alert, animated: true)
    }
    
}
