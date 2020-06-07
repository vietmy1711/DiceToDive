//
//  ArticleCollectionViewCell.swift
//  DiceToDive
//
//  Created by MM on 6/7/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class ArticleCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var vwContainer: UIView!
    @IBOutlet weak var vwMask: UIView!
    @IBOutlet weak var vwGradient: UIView!
    @IBOutlet weak var imvThumbnail: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupCell()
    }
    
    func setupCell() {
        vwContainer.layer.cornerRadius = 8
        vwContainer.layer.shadowColor = UIColor.black.cgColor
        vwContainer.layer.shadowOffset = .zero
        vwContainer.layer.shadowRadius = 2
        vwContainer.layer.shadowOpacity = 0.1
        
        vwMask.layer.masksToBounds = true
        vwMask.layer.cornerRadius = 8
        imvThumbnail.layer.masksToBounds = true
        
        setGradientBackground()
         
    }
    
    func configWithArticle(article: Article) {
        imvThumbnail.image = article.img
        lblTitle.text = article.title
    }
    
    func setGradientBackground() {
        let colorTop =  UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0).cgColor
        let colorBottom = UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.5).cgColor

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.3, 1.0]
        gradientLayer.frame = vwGradient.bounds

        vwGradient.layer.insertSublayer(gradientLayer, at:0)
    }
    
}


