//
//  GameListItem.swift
//  DoYouKnowMe
//
//  Created by Brian Christensen on 09/11/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import Foundation
class GameListItem{
    var gameName: String
    var creatorName: String
    var maxPlayers: Int
    var players: Int
    
    init(gameName: String, creatorName: String, maxPlayers: Int, players: Int){
        self.gameName = gameName
        self.creatorName = creatorName
        self.maxPlayers = maxPlayers
        self.players = players
    }
}
