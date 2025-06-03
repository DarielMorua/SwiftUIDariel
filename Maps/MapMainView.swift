import SwiftUI
import MapKit

struct MapMainView: View {
    @State private var region = MKCoordinateRegion(
        center: LocationDataProvider.centroChihuahua,
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    @State private var selectedPin: LocationPin?
    
    var body: some View {
        NavigationView {
            Map(coordinateRegion: $region,
                annotationItems: LocationDataProvider.lugaresChihuahua) { landmark in
                MapAnnotation(coordinate: landmark.coordinate) {
                    Button(action: {
                        selectedPin = landmark
                    }) {
                        Image(systemName: landmark.category.iconName)
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .semibold))
                            .frame(width: 40, height: 40)
                            .background(Color.blue)
                            .clipShape(Circle())
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 3)
                            )
                            .shadow(radius: 5)
                    }
                }
            }
            .navigationTitle("Mapa Chihuahua")
            .navigationBarTitleDisplayMode(.inline)
            .sheet(item: $selectedPin) { pin in
                LocationDetailView(pin: pin)
            }
        }
    }
}

