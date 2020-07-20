//
//  BarCodeViewController.swift
//  DiceToDive
//
//  Created by MM on 6/30/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class BarCodeViewController: UIViewController {

    var reward: Reward?
    
    @IBOutlet weak var imvBanner: UIImageView!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblExpiration: UILabel!
    @IBOutlet weak var imvBarCode: UIImageView!
    @IBOutlet weak var btnBack: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    func setupUI() {
        if let reward = reward {
            imvBanner.image = reward.img
            lblDescription.text = reward.detail
            lblExpiration.text = "Expires after: \(reward.expirationDate)"
            imvBarCode.image = generateBarcode(from: reward.barCode)
        }
        
        btnBack.layer.cornerRadius = 25
    }
    
    func generateBarcode(from string: String) -> UIImage? {
           let data = string.data(using: String.Encoding.ascii)

           if let filter = CIFilter(name: "CICode128BarcodeGenerator") {
               filter.setValue(data, forKey: "inputMessage")
               let transform = CGAffineTransform(scaleX: 3, y: 3)

               if let output = filter.outputImage?.transformed(by: transform) {
                   return UIImage(ciImage: output)
               }
           }
           return nil
       }
       
    @IBAction func backBtnPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func configWithReward(reward: Reward) {
        self.reward = reward
    }
}
