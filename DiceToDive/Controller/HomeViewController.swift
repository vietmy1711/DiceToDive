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
    
    let articles = [
        Article(img: #imageLiteral(resourceName: "img_buivien"), title: "Trải nghiệm tại phố đi bộ Bùi Viện", text: "Lorem ipsum", author: "Tao"),
        Article(img: #imageLiteral(resourceName: "img_hmc"), title: "Sài Gòn nhìn từ trên cao", text: "Lorem ipsum", author: "Tao"),
        Article(img: #imageLiteral(resourceName: "img_xienque"), title: "Đi ăn xiên que nè", text: "Lorem ipsum", author: "Tao"),
        Article(img: #imageLiteral(resourceName: "img_chungcunguyenhue"), title: "Chung cư Nguyễn Huệ", text: "Lorem ipsum", author: "Tao"),
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
