//
//  ViewController.swift
//  RomanNumeralCalculator
//
//  Created by Chris on 2016-09-07.
//  Copyright © 2016 buddybuild. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController

class ViewController: UIViewController {
    
    // MARK: Properties
    
    var total = 0
    var signOfNextOperation = 1

    // MARK: Outlets
    
    @IBOutlet weak var buttonI: UIButton!
    @IBOutlet weak var buttonV: UIButton!
    @IBOutlet weak var buttonX: UIButton!
    @IBOutlet weak var buttonL: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    @IBOutlet weak var buttonM: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var buttonClear: UIButton!
    
    // MARK: Update Total 
    
    func update() {
        resultLabel.text = toRoman(total)
    }

    func handleButton(_ value: Int) {
        total += value * signOfNextOperation
        update()
    }

    // MARK: Actions
    
    @IBAction func actionI(_ sender: AnyObject) {
        handleButton(1)
    }

    @IBAction func actionV(_ sender: AnyObject) {
        handleButton(5)
    }

    @IBAction func actionX(_ sender: AnyObject) {
        handleButton(10)
    }

    @IBAction func actionL(_ sender: AnyObject) {
        handleButton(50)
    }

    @IBAction func actionC(_ sender: AnyObject) {
        handleButton(100)
    }

    @IBAction func actionD(_ sender: AnyObject) {
        handleButton(500)
    }

    @IBAction func actionM(_ sender: AnyObject) {
        handleButton(1000)
    }

    @IBAction func actionPlus(_ sender: AnyObject) {
        signOfNextOperation = 1
    }

    @IBAction func actionMinus(_ sender: AnyObject) {
        signOfNextOperation = -1
    }

    @IBAction func actionClear(_ sender: AnyObject) {
        total = 0
        update()
    }
}
