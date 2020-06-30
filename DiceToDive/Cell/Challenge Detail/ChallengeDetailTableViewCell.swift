//
//  ChallengeDetailTableViewCell.swift
//  DiceToDive
//
//  Created by MM on 6/28/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class ChallengeDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var vwContainer: UIView!
    @IBOutlet weak var imvMark: UIView!
    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupCell()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell() {
        imvMark.layer.cornerRadius = 10
    }
    
    func configWithObjective(objective: Objective) {
        lblTitle.text = objective.title
        if objective.status == true {
            imvMark.tintColor = .systemOrange
        } else {
            imvMark.tintColor = .systemGray6
        }
    }
}
