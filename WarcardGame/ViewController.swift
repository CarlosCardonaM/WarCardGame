//
//  ViewController.swift
//  WarcardGame
//
//  Created by Carlos Cardona on 07/05/20.
//  Copyright © 2020 D O G. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var theLeftImage: UIImageView!
    
    @IBOutlet weak var theRightImage: UIImageView!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    
    
    var cpuScore = 0
    var playerScore = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func dealTapped(_ sender: Any) {
        
        // Randomize some numbers
        
        let playerNumber = Int.random(in: 2...14)
        //print(leftNumber)
        
        let cpuNumber = Int.random(in: 2...14)
        //print(rightNumber)
        
        theLeftImage.image = UIImage(named: "card\(playerNumber)")
        
        theRightImage.image = UIImage(named: "card\(cpuNumber)")
        
        if playerNumber > cpuNumber {
            // Player Wins!!
            
            playerScore += 1
            playerScoreLabel.text = String(playerScore)
       
        }
        else if playerNumber < cpuNumber {
            // CPU Wins
            
            cpuScore += 1
            cpuScoreLabel.text = String(cpuScore)
        
        
        }
        else {
            // Tie
        }
        
        
        
    }
    
    
}

