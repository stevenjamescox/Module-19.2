//
//  PlayerController.swift
//  Animations
//
//  Created by Justin Smith on 6/8/16.
//  Copyright © 2016 Justin Smith. All rights reserved.
//

import Foundation
import UIKit

class PlayerController {
    
    static let sharedController = PlayerController()
    
    var currentIndex = 0
    
    var players: [UIImage] = []
    init(){
        players = [UIImage(named: "Steve")!,
                              UIImage(named: "Jennifer")!,
                              UIImage(named: "Captain")!,
                              UIImage(named: "Reese")!,
                              UIImage(named: "Tim")!,
                              UIImage(named: "Taylor")!,
                              UIImage(named: "Yoda")!]
        
        players[0].accessibilityIdentifier = "Steve"
        players[1].accessibilityIdentifier = "Jennifer"
        players[2].accessibilityIdentifier = "Captain"
        players[3].accessibilityIdentifier = "Reese"
        players[4].accessibilityIdentifier = "Tim"
        players[5].accessibilityIdentifier = "Taylor"
        players[6].accessibilityIdentifier = "Yoda"
        
    }
    
    func nextPlayer() -> UIImage? {
        if currentIndex != players.endIndex - 1 {
            currentIndex = currentIndex + 1
            return players[currentIndex]
        } else {
            print("You are on the last player")
            return nil
        }
    }
    
    func previousPlayer() -> UIImage? {
        if currentIndex != players.startIndex {
            currentIndex = currentIndex - 1
            return players[currentIndex]
        } else {
            print("You are on the first player")
            return nil
        }
    }
}