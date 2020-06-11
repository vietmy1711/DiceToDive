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
            Objective(title: "Take a picture of Ben Thanh's front", status: false)
        ]),
        Challenge(title: "Healthy Challenge", description: "Yes, we do want to keep you fit, energetic and healthy. Go out, have a walk. Ouh ouh, and remember to stay hydrated", objectives: [
            Objective(title: "Pass by Ben Thanh Terminal", status: true),
            Objective(title: "Enter via Ben Thanh's West Door", status: true),
            Objective(title: "Take a picture of Ben Thanh's front", status: false)
        ]),
        Challenge(title: "Coffee Lover", description: "If you're a coffee lover, we have set a list of coffee shop for you to visit. Give them a try, maybe you'll like them. Vietnamese coffee is the best - they said.", objectives: [
            Objective(title: "Pass by Ben Thanh Terminal", status: true),
            Objective(title: "Enter via Ben Thanh's West Door", status: true),
            Objective(title: "Take a picture of Ben Thanh's front", status: false)
        ])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "ChallengeTableViewCell", bundle: nil), forCellReuseIdentifier: "ChallengeTableViewCell")
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
            //rewards.remove(at: indexPath.row)
        }
    }
}
