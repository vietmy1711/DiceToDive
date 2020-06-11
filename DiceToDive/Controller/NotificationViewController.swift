//
//  NotificationViewController.swift
//  DiceToDive
//
//  Created by MM on 6/7/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var notifications = [
        Notification(img: #imageLiteral(resourceName: "img_hmc"), title: "You have 3 rewards waiting", detail: "Lorem ipsum"),
        Notification(img: #imageLiteral(resourceName: "img_hmc"), title: "You have 2 challenges waiting", detail: "Lorem ipsum"),
        Notification(img: #imageLiteral(resourceName: "img_hmc"), title: "You have 3 dice rolls left for today", detail: "Lorem ipsum")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setup()
    }
    
    func setup() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "NotificationTableViewCell", bundle: nil), forCellReuseIdentifier: "NotificationTableViewCell")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension NotificationViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notifications.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationTableViewCell", for: indexPath) as! NotificationTableViewCell
        cell.selectionStyle = .none
        cell.configWithNotification(notification: notifications[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            notifications.remove(at: indexPath.row)
        }
        tableView.reloadData()
    }
}
