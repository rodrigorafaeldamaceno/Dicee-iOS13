//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    var images = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageViewOne.alpha = 0.8
        diceImageViewTwo.alpha = 0.8
                
        diceImageViewOne.image = images.first
        diceImageViewTwo.image = images.first
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        diceImageViewOne.image = images[Int.random(in: 0...5)]
        diceImageViewTwo.image = images[Int.random(in: 0...5)]
    }
}

