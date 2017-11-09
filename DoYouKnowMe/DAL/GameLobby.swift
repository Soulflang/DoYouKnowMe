//
//  GameLobby.swift
//  DoYouKnowMe
//
//  Created by Mathias R. Larsen on 09/11/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import Foundation
class GameLobby {
    var players: [LobbyPlayer]
    var gameName: String
    var creatorName: String
    var maxPlayers: Int
    
    init(players: [LobbyPlayer],gameName: String,creatorName: String,maxPlayers: Int) {
        self.players = players
        self.gameName = gameName
        self.creatorName = creatorName
        self.maxPlayers = maxPlayers
    }
    
    func getPlayers() -> [LobbyPlayer]{
        return players
    }
    func getGameName() -> String{
        return gameName
    }
    func getCreator() -> String{
        return creatorName
    }
    func getMaxPlayers() -> Int{
        return maxPlayers
    }
    
}
