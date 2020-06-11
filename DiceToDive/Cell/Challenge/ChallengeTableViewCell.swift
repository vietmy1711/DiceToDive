//
//  ChallengeTableViewCell.swift
//  DiceToDive
//
//  Created by MM on 6/11/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class ChallengeTableViewCell: UITableViewCell {

    @IBOutlet weak var vwContainer: UIView!
    @IBOutlet weak var vwMask: UIView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
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
        vwContainer.layer.cornerRadius = 8
        vwContainer.layer.shadowColor = UIColor.black.cgColor
        vwContainer.layer.shadowOffset = CGSize(width: 0, height: 4)
        vwContainer.layer.shadowRadius = 2
        vwContainer.layer.shadowOpacity = 0.1
        
        vwMask.layer.masksToBounds = true
        vwMask.layer.cornerRadius = 8
    }
    
    func configWithChallenge(_ challenge: Challenge) {
        lblTitle.text = challenge.title
        lblDescription.text = challenge.description
        progressView.progress = challenge.progress
    }
    
}
