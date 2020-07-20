//
//  MeViewController.swift
//  DiceToDive
//
//  Created by MM on 6/7/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class MeViewController: UIViewController {

    @IBOutlet weak var imvAvatar: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func setupUI() {
        imvAvatar.layer.cornerRadius = 30
    }
}
