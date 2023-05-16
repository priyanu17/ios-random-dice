//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageViewLeft: UIImageView!
    
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    var leftDiceNumber = 0
    var rightDiceNumber = 0
    // getting image literals
    var diceImages = [
        UIImage(imageLiteralResourceName: "DiceOne"),
        UIImage(imageLiteralResourceName: "DiceTwo"),
        UIImage(imageLiteralResourceName: "DiceThree"),
        UIImage(imageLiteralResourceName: "DiceFour"),
        UIImage(imageLiteralResourceName: "DiceFive"),
        UIImage(imageLiteralResourceName: "DiceSix")
    ]
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
       
        diceImageViewLeft.alpha = 1
        diceImageViewRight.alpha = 1
        
        var leftChange : Int = Int.random(in: 0...5)
        var rightChange : Int = Int.random(in: 0...5)
        
        leftDiceNumber = leftChange
        rightDiceNumber = rightChange
        
        diceImageViewLeft.image = diceImages[leftDiceNumber]
        diceImageViewRight.image = diceImages[rightDiceNumber]
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        diceImageViewLeft.image = UIImage(imageLiteralResourceName: "DiceSix")
        diceImageViewLeft.alpha = 0.5
        
        diceImageViewRight.image = UIImage(imageLiteralResourceName: "DiceTwo")
        diceImageViewRight.alpha = 0.5
    }


}

