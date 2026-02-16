//
//  ViewController.swift
//  DiceeApp-IOS16.6
//
//  Created by Brittany Ewers on 02/15/2026.
//  Copyright © 2019 London App Brewery. All rights reserved.
// My enhanced version
// I added two extra dices - once you click the button roll, it rolls along with the other dices from the beginning and has an outcome, tally report (roll count) - this tells us how many times you clicked the roll button, had a roll and output, and random rolling duration - this allows the dice to roll for a few seconds between 0.5 and 3.0 seconds. Random rolling duration and roll count are printed on the screen for users to be aware.

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    @IBOutlet weak var diceImageView4: UIImageView!
    
    @IBOutlet weak var rollCountLabel: UILabel!
    var rollCount = 0
    
    @IBOutlet weak var rollDurationLabel: UILabel!
    var rollDuration = 0.0
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let rollDuration = Double.random(in: 0.5...3.0)
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        DispatchQueue.main.asyncAfter(deadline: .now() + rollDuration) {
            self.rollDurationLabel.text = ("Roll Duration: \(rollDuration.formatted(.number.precision(.fractionLength(2)))) seconds")
        }
        
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        diceImageView3.image = diceArray[Int.random(in: 0...5)]
        diceImageView4.image = diceArray[Int.random(in: 0...5)]
        
        rollCount += 1
        rollCountLabel.text = "Roll Count: \(rollCount)"
        
    }
    
}

