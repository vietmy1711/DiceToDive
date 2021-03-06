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
    
    override func prepareForReuse() {
        super.prepareForReuse()
        lblTitle.text = ""
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
            imvMark.tintColor = UIColor(red: 206/255, green: 173/255, blue: 67/255, alpha: 1)
        } else {
            imvMark.tintColor = .systemGray6
        }
    }
}
