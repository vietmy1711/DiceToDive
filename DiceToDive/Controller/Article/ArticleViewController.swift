//
//  ArticleViewController.swift
//  DiceToDive
//
//  Created by MM on 6/28/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {

    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var imvArticle: UIImageView!
    @IBOutlet weak var vwRating: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = true
    }
    
    func setupUI() {
        setGradientBackground()
        
        vwRating.layer.cornerRadius = vwRating.bounds.height / 2
        btnBack.layer.cornerRadius = 20
        btnBack.layer.shadowColor = UIColor.black.cgColor
        btnBack.layer.shadowOpacity = 0.2
        btnBack.layer.shadowOffset = CGSize(width: 0, height: 2)
        btnBack.layer.shadowRadius = 10
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    func setGradientBackground() {
        let colorTop =  UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0).cgColor
        let colorBottom = UIColor(red: 0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.5).cgColor

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.3, 1.0]
        gradientLayer.frame = imvArticle.bounds

        imvArticle.layer.insertSublayer(gradientLayer, at:0)
    }
}
