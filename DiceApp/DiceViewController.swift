//
//  DiceViewController.swift
//  DiceApp
//
//  Created by Manali Rami on 2018-07-08.
//  Copyright © 2018 Manali Rami. All rights reserved.
//

import Foundation
import UIKit

class DiceViewController: UIViewController {
    
    var firstValue: Int?
    var secondValue: Int?
    
    // Outlets
    
    @IBOutlet weak var FirstDie: UIImageView!
    @IBOutlet weak var SecondDie: UIImageView!
    
    
    // Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        if let firstValue = self.firstValue {
            self.FirstDie.image = UIImage(named: "d\(firstValue)")
        } else {
            self.FirstDie.image = nil;
        
        }
        
        if let secondValue = self.secondValue {
            self.SecondDie.image = UIImage(named: "d\(secondValue)")
        } else {
            self.SecondDie.image = nil;
       
        }
        self.FirstDie.alpha = 0
        self.SecondDie.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.3) {
            self.FirstDie.alpha = 1
            self.SecondDie.alpha = 1
        }
    }
    func imageForValue(_ value: Int?) -> UIImage? {
        return nil
    }
    // dismiss view controller
    func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }
}
