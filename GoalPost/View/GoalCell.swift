//
//  GoalCell.swift
//  GoalPost
//
//  Created by Artur Ratajczak on 25/02/2019.
//  Copyright © 2019 Artur Ratajczak. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    func configureCell(description: String, goalType: GoalType, goalProgress: Int){
        goalDescriptionLbl.text = description
        goalTypeLbl.text = goalType.rawValue
        goalProgressLbl.text = String(describing: goalProgress)
    }
}
