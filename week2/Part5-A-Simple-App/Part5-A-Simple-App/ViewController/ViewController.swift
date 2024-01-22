//
//  ViewController.swift
//  Part5-A-Simple-App
//
//  Created by Pin Chen on 2024/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    let text = Text()
    let color = Color()

    @IBOutlet weak var changeMiddleLabelButton: UIButton!
    @IBOutlet weak var middleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeMiddleLabel(_ sender: UIButton) {
        middleLabel.text = text.text.randomElement()
        self.view.backgroundColor = color.color.randomElement()
        changeMiddleLabelButton.tintColor = self.view.backgroundColor
    }
}

