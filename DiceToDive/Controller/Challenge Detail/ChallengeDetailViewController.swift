//
//  ChallengeDetailViewController.swift
//  DiceToDive
//
//  Created by MM on 6/28/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class ChallengeDetailViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var objectiveTitle: String?
    var objectives: [Objective] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ChallengeDetailTableViewCell", bundle: nil), forCellReuseIdentifier: "ChallengeDetailTableViewCell")
        setupUI()
    }
    
    func setupUI() {
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationItem.title = "Detail"
        navigationController?.navigationBar.tintColor = UIColor.orange
        tabBarController?.tabBar.isHidden = true
        
        lblTitle.text = objectiveTitle
    }
    
    func configTitle(title: String) {
        objectiveTitle = title
    }
}

extension ChallengeDetailViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objectives.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChallengeDetailTableViewCell", for: indexPath) as! ChallengeDetailTableViewCell
        cell.configWithObjective(objective: objectives[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    
}
