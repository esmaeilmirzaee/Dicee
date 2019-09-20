//
//  ViewController.swift
//  Dicee
//
//  Created by Esmaeil MIRZAEE on 2019-09-12.
//  Copyright © 2019 Esmaeil MIRZAEE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    let dices = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        roll()
    }

    @IBAction func rollDiceButton(_ sender: UIButton) {
        roll()
    }
    
    func roll() {
        diceImageView1.image = UIImage(named: dices[Int.random(in: 0...5)])
        diceImageView2.image = UIImage(named: dices[Int.random(in: 0...5)])
    }
    
}

