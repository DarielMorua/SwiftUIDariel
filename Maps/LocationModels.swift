
import Foundation
import CoreLocation

struct LocationPin: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let description: String
    let category: LocationCategory
}

enum LocationCategory: String, CaseIterable {
    case university = "graduationcap.fill"
    case downtown = "building.2.fill"
    
    var iconName: String {
        return self.rawValue
    }
}
