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
    @IBOutlet weak var lifeStyleCollectionViewFlowLayout: UICollectionViewFlowLayout!
    @IBOutlet weak var lifeStyleCollectionView: UICollectionView!
    @IBOutlet weak var btnStartNow: UIButton!
    
    let articles = [
        Article(img: #imageLiteral(resourceName: "img_buivien"), title: "Experience at Bui Vien Walking Street", text: "Lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum", author: "Tao"),
        Article(img: #imageLiteral(resourceName: "img_hmc"), title: "Significant Saigon from above", text: "Lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum", author: "Tao"),
        Article(img: #imageLiteral(resourceName: "img_xienque"), title: "Local Street Food", text: "Lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum", author: "Tao"),
        Article(img: #imageLiteral(resourceName: "img_chungcunguyenhue"), title: "Nguyen Hue Building", text: "Lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum", author: "Tao"),
        Article(img: #imageLiteral(resourceName: "img_cheesecoffee"), title: "Cheese Coffee", text: "Lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum", author: "Tao")
    ]
    
    let lifeStyles = [
        Article(img: #imageLiteral(resourceName: "img_lifestyle1"), title: "\"Tụi mình thôi nha, có người thương em nhiều hơn anh.\"", text: "Khi anh chia tay với bạn gái gần nhất của mình, lúc đó anh cũng không ngờ là 2 đứa phải xa nhau nữa kia, bởi vì đã yêu xa ngay từ đầu rồi mà.", author: "Tao"),
        Article(img: #imageLiteral(resourceName: "img_lifestyle2"), title: "Bóc Term: Dry January là gì mà Gen Z tích cực ủng hộ?", text: "Dry January /draɪ ˈdʒænjuəri/ (danh từ), hay tháng Một “khô”, là thử thách không bia bọt, rượu chè, các đồ uống có cồn nói chung, vào tháng đầu tiên của năm. Mục đích của người tham gia thường là để giải độc cơ thể sau một mùa lễ hội “ngập ngụa” trong ăn nhậu.", author: "Tao"),
        Article(img: #imageLiteral(resourceName: "img_lifestyle4"), title: "\"Hơi chậm, nhưng đường còn dài, và em còn trẻ anh ơi.\"", text: "Năm ngoái là năm tệ nhứt trong cuộc đời em: Em làm thêm công việc tài xế lái xe, chở khách lên núi gặp sương mù khách chửi một tràng rồi đòi em trả tiền lại. Người yêu sau 5 năm mặn nồng thì bỏ em đòi đi theo thằng bạn học của em, mà để xát thêm muối vô vết thương thì thằng này siêu giàu, xe đi thì phải Ferrari mới chịu, còn nhà thì ở khu biệt thự của Đài Trung này. Trong khi của cải vật chất thì em không có gì quý tại lúc đó em mê chơi quánh bài quánh bạc, thắng được 3000 đô thì thua cũng hết 3000 đô. Thậm chí 26 tuổi mà vẫn còn ở với mẹ, người ngợm lại xấu xí thừa cân. Gần đây thì mới nghe tin con bồ cũ em chuẩn bị cưới thằng kia luôn rồi.", author: "Tao"),
        Article(img: #imageLiteral(resourceName: "img_lifestyle3"), title: "Ai cũng thường có một thần tượng cho riêng mình.", text: """
Từ bé tôi có vài ba thần tượng đặc biệt, như John Lennon, Frederic Chopin, Tuomas Holopainen, Martin Luther King...
                Nhưng một thời gian sau, khi tôi nhận định rằng mình bắt đầu tiến tiếp ở cái tuổi 20, thì tôi mới thấy người tôi thật sự thần tượng là ông cụ nhà mình
""", author: "Tao")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
        tabBarController?.tabBar.isHidden = false
    }

    func setup() {
       
        articleCollectionView.delegate = self
        articleCollectionView.dataSource = self
        
        articleCollectionView.register(UINib(nibName: "NewArticleCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "NewArticleCollectionViewCell")
        articleCollectionViewFlowLayout.itemSize = CGSize(width: 180, height: 240)

        lifeStyleCollectionView.delegate = self
        lifeStyleCollectionView.dataSource = self
        
        lifeStyleCollectionView.register(UINib(nibName: "NewArticleCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "NewArticleCollectionViewCell")
        
        lifeStyleCollectionViewFlowLayout.itemSize = CGSize(width: 180, height: 240)
        
        btnStartNow.layer.borderColor = UIColor(red: 206/255, green: 173/255, blue: 67/255, alpha: 1).cgColor
        btnStartNow.layer.cornerRadius = 20
        btnStartNow.layer.borderWidth = 2
        
    }
    
    @objc func challengeTapped() {
        tabBarController?.selectedIndex = 1
    }
    
    @objc func rewardTapped() {
        tabBarController?.selectedIndex = 2
    }
    @IBAction func startBtnTapped(_ sender: UIButton) {
        let mapVC = MapViewController()
        self.navigationController?.present(mapVC, animated: true, completion: nil)
//        self.navigationController?.pushViewController(mapVC, animated: true)
    }
}


extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == lifeStyleCollectionView {
            return lifeStyles.count
        }
        return articles.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewArticleCollectionViewCell", for: indexPath) as! NewArticleCollectionViewCell
        if collectionView == lifeStyleCollectionView {
            cell.configWithArticle(article: lifeStyles[indexPath.row])
        } else {
            cell.configWithArticle(article: articles[indexPath.row])
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 180, height: 240)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == lifeStyleCollectionView {
            let articleVC = NewArticleViewController(nibName: "NewArticleViewController", bundle: nil)
            articleVC.index = indexPath.row
            navigationController?.pushViewController(articleVC, animated: true)
            return
        }
        let articleVC = ArticleViewController(nibName: "ArticleViewController", bundle: nil)
        navigationController?.pushViewController(articleVC, animated: true)
    }
}
