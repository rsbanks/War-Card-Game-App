//
//  ViewController.swift
//  WarCardGame
//
//  Created by Rebecca Banks on 01/06/2020.
//  Copyright © 2020 Rebecca Banks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    

    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        // Randomise 2 numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)

        // Update the image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        // Compare the numbers and adjust scores accoringingly
        if leftNumber > rightNumber {
            // Player wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if leftNumber < rightNumber {
            // CPU wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        
    }
    

}

