//
//  RewardViewController.swift
//  DiceToDive
//
//  Created by MM on 6/7/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class RewardViewController: UIViewController{

    @IBOutlet weak var tableView: UITableView!
    
    let rewards = [
        Reward(img: #imageLiteral(resourceName: "img_gongcha"), title: "Free one topping at Gong Cha", detail: "Lorem ipsum", expirationDate: "30/4/1975", qrCode: "bfuYVUYVfqnsjduibYVDq"),
        Reward(img: #imageLiteral(resourceName: "img_hotpotstory"), title: "Discount 10% at HotPot Story", detail: "Lorem ipsum", expirationDate: "30/4/1975", qrCode: "ugYYfBIUFBqfASdiaodiad"),
        Reward(img: #imageLiteral(resourceName: "img_gogihouse"), title: "Discount 15% at GoGi House Van Hanh Mall", detail: "Lorem ipsum", expirationDate: "30/4/1975", qrCode: "nJUBNViuwbfUIBbqefqu"),
        Reward(img: #imageLiteral(resourceName: "img_ananas"), title: "A pair of socks at Ananas", detail: "Lorem ipsum", expirationDate: "30/4/1975", qrCode: "fnqjfbYBYfqfqufbqi")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }
    
    func setupUI() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "RewardTableViewCell", bundle: nil), forCellReuseIdentifier: "RewardTableViewCell")
    }


    func generateQRCode(from string: String) -> UIImage? {
        let data = string.data(using: String.Encoding.ascii)

        if let filter = CIFilter(name: "CIQRCodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 3, y: 3)

            if let output = filter.outputImage?.transformed(by: transform) {
                return UIImage(ciImage: output)
            }
        }

        return nil
    }
    
}


extension RewardViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rewards.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RewardTableViewCell", for: indexPath) as! RewardTableViewCell
        cell.selectionStyle = .none
        cell.configWithReward(rewards[indexPath.row])
        return cell
    }
    
    
}
