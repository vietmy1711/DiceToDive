//
//  FirstViewController.swift
//  DiceToDive
//
//  Created by MM on 6/1/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var articleCollectionViewFlowLayout: UICollectionViewFlowLayout!
    @IBOutlet weak var articleCollectionView: UICollectionView!
    @IBOutlet weak var btnStartNow: UIButton!
    @IBOutlet weak var vwContainer: UIView!
    @IBOutlet weak var vwMask: UIView!
    
    let articles = [
        Article(img: #imageLiteral(resourceName: "img_buivien"), title: "Experience at Bui Vien Walking Street", text: "Lorem ipsum", author: "Tao"),
        Article(img: #imageLiteral(resourceName: "img_hmc"), title: "Significant Saigon from above", text: "Lorem ipsum", author: "Tao"),
        Article(img: #imageLiteral(resourceName: "img_xienque"), title: "Local Street Food", text: "Lorem ipsum", author: "Tao"),
        Article(img: #imageLiteral(resourceName: "img_chungcunguyenhue"), title: "Nguyen Hue Building", text: "Lorem ipsum", author: "Tao"),
        Article(img: #imageLiteral(resourceName: "img_cheesecoffee"), title: "Cheese Coffee", text: "Lorem ipsum", author: "Tao")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setup()
    }

    func setup() {
       
        articleCollectionView.delegate = self
        articleCollectionView.dataSource = self
        
        articleCollectionView.register(UINib(nibName: "ArticleCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ArticleCollectionViewCell")
        articleCollectionViewFlowLayout.itemSize = CGSize(width: 280, height: 180)
        btnStartNow.layer.borderColor = UIColor.systemOrange.cgColor
        btnStartNow.layer.cornerRadius = 20
        btnStartNow.layer.borderWidth = 2
        
        vwMask.layer.masksToBounds = true
        vwMask.layer.cornerRadius = 20
        
        vwContainer.layer.cornerRadius = 20
        vwContainer.layer.shadowColor = UIColor.black.cgColor
        vwContainer.layer.shadowOffset = CGSize(width: 0, height: 4)
        vwContainer.layer.shadowRadius = 4
        vwContainer.layer.shadowOpacity = 0.2
    }
}


extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ArticleCollectionViewCell", for: indexPath) as! ArticleCollectionViewCell
        cell.configWithArticle(article: articles[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 280, height: 180)
    }
}
