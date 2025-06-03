//
//  clubmodel.swift
//  mobileProjects
//
//  Created by ITIT2 on 28/04/25.
//

import Foundation
import MapKit

struct PlaceAnnotation: Identifiable, Decodable {
    let id: String
    let name: String
    let address: String
    let latitude: Double
    let longitude: Double
    let imageUrl: String
    
    var coordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
