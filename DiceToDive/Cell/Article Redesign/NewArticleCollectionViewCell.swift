//
//  NewArticleCollectionViewCell.swift
//  DiceToDive
//
//  Created by MM on 04/01/2021.
//  Copyright © 2021 MM. All rights reserved.
//

import UIKit

class NewArticleCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var vwContainer: UIView!
    @IBOutlet weak var vwMask: UIView!
    @IBOutlet weak var imvThumbnail: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    func setupUI() {
        vwContainer.layer.cornerRadius = 8
        vwContainer.layer.shadowColor = UIColor.black.cgColor
        vwContainer.layer.shadowOffset = .zero
        vwContainer.layer.shadowRadius = 2
        vwContainer.layer.shadowOpacity = 0.1
        
        vwMask.layer.masksToBounds = true
        vwMask.layer.cornerRadius = 8
    }
    
    func configWithArticle(article: Article) {
        imvThumbnail.image = article.img
        lblTitle.text = article.title
        lblText.text = article.text
    }
}
