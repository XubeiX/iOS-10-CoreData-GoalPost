//
//  CreateGoalVC.swift
//  GoalPost
//
//  Created by Artur Ratajczak on 09/03/2019.
//  Copyright © 2019 Artur Ratajczak. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var LongTermBtn: UIButton!
    @IBOutlet weak var NextBtn: UIButton!
    
    var goalType: GoalType = .shorTerm {
        didSet {
            if goalType == .shorTerm {
                shortTermBtn.setSelectedColor()
                LongTermBtn.setDeselectedColor()
            } else {
                shortTermBtn.setDeselectedColor()
                LongTermBtn.setSelectedColor()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NextBtn.bindToKeyboard()
        shortTermBtn.setSelectedColor()
        LongTermBtn.setDeselectedColor()
        // Do any additional setup after loading the view.
    }
    @IBAction func nextBtnWasPressed(_ sender: Any) {
    }
    
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        goalType = .shorTerm
    }
    
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        goalType = .longTerm
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
}
