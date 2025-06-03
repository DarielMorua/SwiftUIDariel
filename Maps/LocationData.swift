
import Foundation
import CoreLocation
class LocationDataProvider: ObservableObject {
    static let lugaresChihuahua: [LocationPin] = [
        LocationPin(
            name: "Universidad La Salle Chihuahua",
            coordinate: CLLocationCoordinate2D(latitude: 28.609650012789842, longitude: -106.12786870600344),
            description: "Campus universitario privado lasallista",
            category: .university
        ),
        LocationPin(
            name: "Centro Histórico",
            coordinate: CLLocationCoordinate2D(latitude: 28.63656992672516, longitude: -106.07668553061184),
            description: "Arquitectura colonial y vida comercial",
            category: .downtown
        ),
        LocationPin(
            name: "Quinta Gameros",
            coordinate: CLLocationCoordinate2D(latitude: 28.6389, longitude: -106.0867),
            description: "Joya arquitectónica del porfiriato mexicano",
            category: .downtown
        )
    ]
    
    static let centroChihuahua = CLLocationCoordinate2D(
        latitude: 28.6353,
        longitude: -106.0889
    )
}
