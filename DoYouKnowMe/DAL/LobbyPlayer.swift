//
//  File.swift
//  DoYouKnowMe
//
//  Created by Mathias R. Larsen on 09/11/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import Foundation
class LobbyPlayer {
    var name: String
    var isReady: bool
    
    init(name: String,isReady: bool) {
        self.name = name
        self.isReady = isReady
    }
    
    func playerIsReady() -> bool{
        return isReady
    }
    func getPlayerName() -> String{
        return name
    }
}
