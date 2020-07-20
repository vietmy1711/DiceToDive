//
//  ChallengeViewController.swift
//  DiceToDive
//
//  Created by MM on 6/7/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class ChallengeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var challenges: [Challenge] = [
        Challenge(title: "Explore Ben Thanh Market", description: "Considered one of the most reconigzable of Ho Chi Minh City, it will be such a waste of you don't drop by. Check this now!", objectives: [
            Objective(title: "Pass by Ben Thanh Terminal", status: true),
            Objective(title: "Enter via Ben Thanh's West Door", status: false),
            Objective(title: "Take a picture of Ben Thanh's front", status: false),
            Objective(title: "Collect 32 points and a cool reward", status: false)
        ]),
        Challenge(title: "Healthy Challenge", description: "Yes, we do want to keep you fit, energetic and healthy. Go out, have a walk. Ouh ouh, and remember to stay hydrated", objectives: [
            Objective(title: "Walk 500 meters. (500/500)", status: true),
            Objective(title: "Step 1000 footsteps. (1000/1000)", status: true),
            Objective(title: "Burn 400 calories today. (312/400)", status: false),
            Objective(title: "Collect 50 points", status: false)
        ]),
        Challenge(title: "Coffee Lover", description: "If you're a coffee lover, we have set a list of coffee shop for you to visit. Give them a try, maybe you'll like them. Vietnamese coffee is the best - they said.", objectives: [
            Objective(title: "Drop by The Coffee House Calmette", status: true),
            Objective(title: "Purchase 1 traditional Coffee", status: true),
            Objective(title: "Enjoy the coffee", status: false),
            Objective(title: "Collect 32 points and a cool reward", status: false)
        ])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ChallengeTableViewCell", bundle: nil), forCellReuseIdentifier: "ChallengeTableViewCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
        tabBarController?.tabBar.isHidden = false
    }
    
}

extension ChallengeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return challenges.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChallengeTableViewCell", for: indexPath) as! ChallengeTableViewCell
        cell.selectionStyle = .none
        cell.configWithChallenge(challenges[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let alert = UIAlertController(title: "Are you sure you want to delete this?", message: "If you delete this, you will have to find this again", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { (_) in
                self.challenges.remove(at: indexPath.row)
                tableView.reloadData()
            }))
            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
            
            self.present(alert, animated: true)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = ChallengeDetailViewController(nibName: "ChallengeDetailViewController", bundle: nil)
        detailVC.objectives = challenges[indexPath.row].objectives
        detailVC.configTitle(title: challenges[indexPath.row].title)
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
