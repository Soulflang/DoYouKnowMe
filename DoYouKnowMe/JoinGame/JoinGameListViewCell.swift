//
//  JoinGameListViewCell.swift
//  DoYouKnowMe
//
//  Created by Brian Christensen on 11/11/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit

class JoinGameListViewCell: UITableViewCell {

    @IBOutlet weak var lblGameName: UILabel!
    @IBOutlet weak var lblCreatorName: UILabel!
    @IBOutlet weak var lblJoinedPlayers: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setPlayers(players:Int, maxPlayers:Int){
        lblJoinedPlayers.text = "Players: \(players)/\(maxPlayers)"
    }
    
    
    
}
