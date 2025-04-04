
import SwiftUI

struct NavigationWater: View {
    @StateObject private var viewModel = AuthenticationViewModel()
    @State private var navigateToWaterTracker = false

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // Botón que lanza Face ID y luego navega si es exitoso
                Button(action: {
                    viewModel.authenticateWithFaceID()
                }) {
                    Text("Water Tracker (Protected)")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                // Navegación oculta controlada por el estado
                NavigationLink(
                    destination: WaterTrackerView(),
                    isActive: $navigateToWaterTracker,
                    label: { EmptyView() }
                )

                NavigationLink(destination: ProfileScreen()) {
                    Text("Profile Screen")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .navigationTitle("Pantalla de Inicio")
            .onAppear{
                viewModel.isAuthenticated = false
            }
            .onChange(of: viewModel.isAuthenticated) { isAuthenticated in
                if isAuthenticated {
                    navigateToWaterTracker = true
                }
                    
            }
        }
    }
}

