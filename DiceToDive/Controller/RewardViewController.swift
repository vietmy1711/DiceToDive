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
    
    var rewards = [
        Reward(img: #imageLiteral(resourceName: "img_gongcha"), title: "Free one topping at Gong Cha", detail: "Lorem ipsum", expirationDate: "30/7/2020", barCode: "bfuYVUYVfqnsjduibYVDq"),
        Reward(img: #imageLiteral(resourceName: "img_hotpotstory"), title: "Discount 10% at HotPot Story", detail: "Lorem ipsum", expirationDate: "12/9/2020", barCode: "ugYYfBIUFBqfASdiaodiad"),
        Reward(img: #imageLiteral(resourceName: "img_gogihouse"), title: "Discount 15% at GoGi House Van Hanh Mall", detail: "Lorem ipsum", expirationDate: "17/7/2020", barCode: "nJUBNViuwbfUIBbqefqu"),
        Reward(img: #imageLiteral(resourceName: "img_ananas"), title: "A pair of socks at Ananas", detail: "Thank you for your trust, keeping things unique and inspirating. Please come to the nearest outlet to collect your reward.", expirationDate: "17/7/2020", barCode: "fnqjfbYBYfqfqufbqi")
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let barCodeVC = BarCodeViewController(nibName: "BarCodeViewController", bundle: nil)
        barCodeVC.configWithReward(reward: rewards[indexPath.row])
        self.present(barCodeVC, animated: true, completion: nil)
    }
}
