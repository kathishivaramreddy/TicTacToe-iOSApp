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
    
    
    @IBAction func gameButtonPressed(_ sender: UIButton) {
        
        if game.activePlayer == 1 {
            sender.setImage(UIImage(named: "cross"), for: [])
            game.activePlayer = 2
        }else {
            sender.setImage(UIImage(named: "nought"), for: [])
            game.activePlayer = 1
        }
        
        
    }
    
    
}
