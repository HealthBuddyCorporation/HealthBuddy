//
//  MapPin.swift
//  HealthBuddy
//
//  Created by roman domasik on 16/12/2023.
//

import Foundation
import MapKit

struct MapPin: Identifiable {
    let id = UUID()
    var coordinate: CLLocationCoordinate2D
}
