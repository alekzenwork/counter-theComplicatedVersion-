//
//  ViewController.swift
//  counter(theComplicatedVersion)
//
//  Created by Александр Баранов on 09.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainCounter: UILabel!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var historyOfChange: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
private var number = 0
    @IBAction func plusOne(_ sender: Any) {
        number += 1
        mainCounter.text = "\(number)"
    }
    
    @IBAction func minusOne(_ sender: Any) {
        number -= 1
        if number > 0 { mainCounter.text = "\(number)"
        } else {
            number = 0
            mainCounter.text = "\(number)"
        }
        
    }
    @IBAction func resetCounter(_ sender: Any) {
        number = 0
        mainCounter.text = "\(number)"
    }
}
