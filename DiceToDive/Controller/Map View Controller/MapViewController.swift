//
//  MapViewController.swift
//  DiceToDive
//
//  Created by MM on 03/01/2021.
//  Copyright © 2021 MM. All rights reserved.
//

import UIKit
import GoogleMaps

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: GMSMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMap()
        setupMarker()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = true
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }

    func setupMap() {
        mapView.settings.myLocationButton = true
        mapView.settings.compassButton = true
        mapView.isMyLocationEnabled = true
        mapView.delegate = self
    }
    
    func setupMarker() {
        
    }
}

extension MapViewController: GMSMapViewDelegate {
//    func mapView(_ mapView: GMSMapView, markerInfoWindow marker: GMSMarker) -> UIView? {
//        <#code#>
//    }
}
