//
//  ViewController.swift
//  TicTacToe
//
//  Created by apple on 5/17/19.
//  Copyright © 2019 shivaapple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game = Game()
    
    @IBOutlet var gameButtons: [UIButton]!
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBAction func gameButtonPressed(_ sender: UIButton) {
        
        let activePostion = sender.tag - 1
        if game.gameState[activePostion] == 0 && game.activeGame {
            game.gameState[activePostion] = game.activePlayer
            if game.activePlayer == 1 {
                sender.setImage(UIImage(named: "cross"), for: [])
                game.activePlayer = 2
                }else {
                sender.setImage(UIImage(named: "nought"), for: [])
                game.activePlayer = 1
            }
        }
        checkForWinner()
    }
    
    func checkForWinner() {
        
        let result = game.checkForWinner()
        updateViewFromModel(with: result)
    }
    
    func updateViewFromModel(with result: Int?) {
        
        if !game.activeGame {
            winnerLabel.isHidden = false
            playAgainButton.isHidden = false
            if let player = result {
                winnerLabel.text = player == 1 ? "Cross has won" : "Noughts has won"
            }else {
                winnerLabel.text = "Its a draw"
            }
        }
    }
    
    
    @IBAction func playAgain(_ sender: UIButton) {
        game.activeGame = true
        game.activePlayer = 1
        game.gameState = [0,0,0,0,0,0,0,0,0]
        winnerLabel.isHidden = true
        playAgainButton.isHidden = true
        for buttons in gameButtons {
            buttons.setImage(nil, for: [])
        }
    }
    
    override func viewDidLoad() {
        winnerLabel.isHidden = true
        playAgainButton.isHidden = true
    }
    
}
