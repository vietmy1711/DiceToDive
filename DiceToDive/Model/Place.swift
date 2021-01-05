//
//  Place.swift
//  DiceToDive
//
//  Created by MM on 03/01/2021.
//  Copyright © 2021 MM. All rights reserved.
//

import Foundation
import CoreLocation

enum PlaceCategory: String {
    case eatery = "Eatery"
    case chillOut = "Chill Out"
    case activities = "Activities"
}

struct Place {
    var name: String
    var address: String
    var coordinate: CLLocationCoordinate2D
    var category: PlaceCategory
}
