//
//  Game.swift
//  TicTacToe
//
//  Created by apple on 5/18/19.
//  Copyright © 2019 shivaapple. All rights reserved.
//

import Foundation

struct Game {
    
    var activeGame = true
    var activePlayer = 1  // 1 is cross 2 is nought
    var gameState = [0,0,0,0,0,0,0,0,0]
    var winningCombination = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
    
    
    mutating func checkForWinner() -> Int?{
        for combination in winningCombination {
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]]  && gameState[combination[1]] == gameState[combination[2]] {
                activeGame = false
                return gameState[combination[0]]
            }
        }
        return nil
    }
    
}
