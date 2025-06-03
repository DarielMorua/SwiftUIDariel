import SwiftUI
import MapKit

struct LocationDetailView: View {
    let pin: LocationPin
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // titulo icono
                VStack(spacing: 12) {
                    Image(systemName: pin.category.iconName)
                        .foregroundColor(.blue)
                        .font(.system(size: 50))
                    
                    Text(pin.name)
                        .font(.title2)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    Text(categoryDisplay)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding()
                
                // descripcion
                VStack(alignment: .leading, spacing: 8) {
                    Text("Descripción")
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    Text(pin.description)
                        .font(.body)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.leading)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Detalles")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Cerrar") {
                        dismiss()
                    }
                }
            }
        }
    }
    
    private var categoryDisplay: String {
        switch pin.category {
        case .university:
            return "Universidad"
        case .downtown:
            return "Centro de la Ciudad"
        }
    }
}
