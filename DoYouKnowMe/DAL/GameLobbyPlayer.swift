//
//  LobbyPlayer.swift
//  DoYouKnowMe
//
//  Created by Mathias R. Larsen on 09/11/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import Foundation
class GameLobbyPlayer {
    var name: String
    var isReady: Bool = false
    
    init(name: String,isReady: Bool) {
        self.name = name
        self.isReady = isReady
    }
    
    
}
