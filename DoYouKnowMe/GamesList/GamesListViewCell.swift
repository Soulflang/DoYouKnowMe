//
//  GamesListIViewCell.swift
//  DoYouKnowMe
//
//  Created by Morten Due Christiansen on 09/11/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit

class GamesListViewCell: UITableViewCell {

    @IBOutlet weak var lblGameName: UILabel!
    @IBOutlet weak var lblCreatorName: UILabel!
    @IBOutlet weak var lblPlayers: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setPlayers(players:Int, maxPlayers:Int){
        lblPlayers.text = "Players: \(players)/\(maxPlayers)"
    }
    
}
