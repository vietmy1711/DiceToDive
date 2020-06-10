//
//  RewardTableViewCell.swift
//  DiceToDive
//
//  Created by MM on 6/10/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class RewardTableViewCell: UITableViewCell {

    @IBOutlet weak var vwContainer: UIView!
    @IBOutlet weak var vwMask: UIView!
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblExpiration: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        setupCell()
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
    
    func configWithReward(_ reward: Reward) {
        imgLogo.image = reward.img
        lblTitle.text = reward.title
        lblExpiration.text = "Expires after: \(reward.expirationDate)"
    }
}
