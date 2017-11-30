//
//  CustomTableViewCell.swift
//  DoYouKnowMe
//
//  Created by Brian Christensen on 04/11/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit
import RealmSwift

class ResultTableViewCell: UITableViewCell {

    
    @IBOutlet weak var questionTextView: UITextView!
    @IBOutlet weak var answerPlayer1: UILabel!
    @IBOutlet weak var answerPlayer2: UILabel!
    @IBOutlet weak var answerBackground: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    
    }
    func didPlayersAgree() -> Bool{
        if answerPlayer1 == answerPlayer2{
            return true
        }
        else{
            return false
        }
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        

        // Configure the view for the selected state
    }
    
}
