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
    
    var eateryPlaces: [Place] = [
        Place(name: "Bánh mì Huỳnh Hoa", address: "26 Lê Thị Riêng, P.BT, Quận 1, Thành phố Hồ Chí Minh 700000, Việt Nam", coordinate: CLLocationCoordinate2D(latitude: 10.7715275, longitude: 106.6902056), category: .eatery),
        Place(name: "Bánh Mì Bảy Hổ", address: "19 Huỳnh Khương Ninh, Đa Kao, Quận 1, Thành phố Hồ Chí Minh, Việt Nam", coordinate: CLLocationCoordinate2D(latitude: 10.790362, longitude: 106.696633), category: .eatery),
        Place(name: "Phở Tàu Bay", address: "435 Lý Thái Tổ, Phường 9, Quận 10, Thành phố Hồ Chí Minh 70000, Việt Nam", coordinate: CLLocationCoordinate2D(latitude: 10.767816, longitude: 106.6687586), category: .eatery),
        Place(name: "Quán Phở Hoà", address: "260A Pasteur, Phường 8, Quận 3, Thành phố Hồ Chí Minh, Việt Nam", coordinate: CLLocationCoordinate2D(latitude: 10.786704, longitude: 106.6893939), category: .eatery),
        Place(name: "Phở Dậu", address: "288 M1 Nam Kỳ Khởi Nghĩa, Phường 8, Quận 3, Thành phố Hồ Chí Minh 700000, Việt Nam", coordinate: CLLocationCoordinate2D(latitude: 10.7898099, longitude: 106.6150642), category: .eatery),
        Place(name: "KOI Thé - The Garden Mall", address: "GH 1.10, 190 Hồng Bàng, phường 12, Quận 5 TTTM The Garden Mall, Thành phố Hồ Chí Minh 70000, Việt Nam", coordinate: CLLocationCoordinate2D(latitude: 10.7545639, longitude: 106.6562754), category: .eatery)
    ]
    
    var chillOutPlaces: [Place] = [
        Place(name: "In The Mood Saigon", address: "32 Trần Ngọc Diện, Thảo Điền, Quận 2, Thành phố Hồ Chí Minh, Việt Nam", coordinate: CLLocationCoordinate2D(latitude: 10.8054413, longitude: 106.7407811), category: .chillOut),
        Place(name: "L’usine", address: "90 Pasteur, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh, Việt Nam", coordinate: CLLocationCoordinate2D(latitude: 10.7722003, longitude: 106.7023712), category: .chillOut),
        Place(name: "Pasteur Street Brewing Co. - Original Taproom & Restaurant", address: "144 Pasteur, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh 70000, Việt Nam", coordinate: CLLocationCoordinate2D(latitude: 10.7751822, longitude: 106.7008333), category: .chillOut),
        Place(name: "Soul Classic Pub", address: "6 Đoàn Văn Bơ, Phường 9, Quận 4, Thành phố Hồ Chí Minh, Việt Nam", coordinate: CLLocationCoordinate2D(latitude: 10.760884, longitude: 106.707567), category: .chillOut),
        Place(name: "Chợ gạo Bar", address: "192 Lý Tự Trọng, Phường Bến Thành, Quận 1, Thành phố Hồ Chí Minh, Việt Nam", coordinate: CLLocationCoordinate2D(latitude: 10.7729864, longitude: 106.6955142), category: .chillOut)
    ]
    
    var activityPlaces: [Place] = [
//        Place(name: "Bảo tàng Mỹ Thuật", address: "32 Trần Ngọc Diện, Thảo Điền, Quận 2, Thành phố Hồ Chí Minh, Việt Nam", coordinate: CLLocationCoordinate2D(latitude: 10.8054413, longitude: 106.7407811), category: .activities),
//        Place(name: "Saigon Skydeck", address: "36 Hồ Tùng Mậu, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh, Việt Nam", coordinate: CLLocationCoordinate2D(latitude: 10.7738726, longitude: 106.6978677), category: .activities),
        Place(name: "Phố Nhật - Japan Town SaiGon", address: "Góc đường Thái Văn Lung - Lê Thánh Tôn, Quận 1, Thành phố Hồ Chí Minh, Việt Nam", coordinate: CLLocationCoordinate2D(latitude: 10.7751822, longitude: 106.7008333), category: .activities),
        Place(name: "Bùi Viện", address: "Phạm Ngũ Lão, Quận 1, Thành phố Hồ Chí Minh, Việt Nam", coordinate: CLLocationCoordinate2D(latitude: 10.7667463, longitude: 106.6924759), category: .activities),
    ]
    
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
        var markers: [GMSMarker] = []
        for place in eateryPlaces {
            let marker = GMSMarker(position: place.coordinate)
            marker.title = place.name
            marker.snippet = place.address + "\n" + place.category.rawValue
            marker.icon = GMSMarker.markerImage(with: .orange)
            marker.map = self.mapView
            markers.append(marker)
        }
        for place in chillOutPlaces {
            let marker = GMSMarker(position: place.coordinate)
            marker.title = place.name
            marker.snippet = place.address + "\n" + place.category.rawValue
            marker.icon = GMSMarker.markerImage(with: .magenta)
            marker.map = self.mapView
            markers.append(marker)
        }
        for place in activityPlaces {
            let marker = GMSMarker(position: place.coordinate)
            marker.title = place.name
            marker.snippet = place.address + "\n" + place.category.rawValue
            marker.icon = GMSMarker.markerImage(with: .red)
            marker.map = self.mapView
            markers.append(marker)
        }
        let circleCenter = CLLocationCoordinate2D(latitude: 10.7729864, longitude: 106.6955142)
        let circle = GMSCircle(position: circleCenter, radius: 1000)
        circle.map = mapView
        let bounds = markers.reduce(GMSCoordinateBounds()) {
            $0.includingCoordinate($1.position)
        }
        mapView.animate(with: .fit(bounds, withPadding: 30.0))
    }
}

extension MapViewController: GMSMapViewDelegate {
//    func mapView(_ mapView: GMSMapView, markerInfoWindow marker: GMSMarker) -> UIView? {
//        <#code#>
//    }
}
