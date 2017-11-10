//
//  GameLobby.swift
//  DoYouKnowMe
//
//  Created by Brian Christensen on 10/11/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import Foundation


class GameLobby{
    
    var gameName: String
    var creatorName: String
    var maxPlayers: Int
    var players = [GameLobbyPlayer]()
    
    init(gameName: String, creatorName: String, maxPlayers: Int){
        self.gameName = gameName
        self.creatorName = creatorName
        self.maxPlayers = maxPlayers
    }
    
}
