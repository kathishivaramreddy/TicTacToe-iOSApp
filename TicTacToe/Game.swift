//
//  Game.swift
//  TicTacToe
//
//  Created by apple on 5/18/19.
//  Copyright © 2019 shivaapple. All rights reserved.
//

import Foundation

struct Game {
    
    var activePlayer = 1  // 1 is cross 2 is nought
    var gameState = [0,0,0,0,0,0,0,0,0]
    var winningCombination = [[0,1,2],[3,4,5],[6,7,8],[0,4,8],[2,4,6]]
    
    
    func checkForWinner() {
        for combination in winningCombination {
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]]  && gameState[combination[1]] == gameState[combination[2]] {
                
            }
        }
    }
    
}
