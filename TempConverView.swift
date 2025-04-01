
import SwiftUI
    	
struct TempConverView: View {
    @StateObject private var viewModel = TempViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Text("Temperature Converter")
                .font(.title2)
                .bold()

            TextField("Enter temperature in Celsius", text: $viewModel.celsius)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .padding()

            Button("Calculate to Fahrenheit") {
                viewModel.calculateTemp()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            Text("Temperature is: \(viewModel.result ?? 0)")
            
            Image(viewModel.image)

            
        }
        .padding()
    }
}
    

