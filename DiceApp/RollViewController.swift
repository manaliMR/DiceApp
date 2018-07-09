//
//  RollViewController.swift
//  DiceApp
//
//  Created by Manali Rami on 2018-07-08.
//  Copyright © 2018 Manali Rami. All rights reserved.
//

import UIKit

class RollViewController: UIViewController {

    @IBOutlet weak var RollTheDice: UIButton!
    // Generate Dice value randomly from 1 to 6
    
    func randomDiceValue() -> Int {
        let randomValue = 1 + arc4random() % 6
        
        return Int(randomValue)
    }
    
    // Actions
    
    @IBAction func rolltheDice(_ sender: Any) {
        performSegue(withIdentifier: "RollDice", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "RollDice" {
            let controller = segue.destination as! DiceViewController
            
            controller.firstValue = randomDiceValue()
            controller.secondValue = randomDiceValue()
        }
    }
}

