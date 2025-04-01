
import SwiftUI

struct WaterTrackerView: View {
    @State private var water: Int = 0

    @StateObject private var viewModel = WaterViewModel()


    
    var body: some View {
            
        VStack(){
            Text("Water Intake")
            
            
            HStack (alignment: .center){
                Button(action: {water = viewModel.calculateWaterIntake(intake: 250)}){
                    VStack{
                        Image("water1").resizable()
                            .frame(width: 100,height: 150)
                            .padding(20)
                        Text("250 ml")
                    }
                }
                Button(action: {water = viewModel.calculateWaterIntake(intake: 500)}){
                    
                    VStack{
                        Image("water2").resizable()
                            .frame(width: 100,height: 180)
                        Text("500 ml")
                    }
                }
                Button(action: {water = viewModel.calculateWaterIntake(intake: 1000)}){
                    
                    VStack{
                        Image("water3").resizable()
                            .frame(width: 160,height: 180)
                        Text("1 L")
                    }
                }
            }
            Text("Haz tomado: \(viewModel.water) ml")
        }
        .onShake{
        viewModel.resetWater()
        }
        }
        
    }


#Preview {
    WaterTrackerView()
}

// The notification we'll send when a shake gesture happens.
extension UIDevice {
    static let deviceDidShakeNotification = Notification.Name(rawValue: "deviceDidShakeNotification")
}

//  Override the default behavior of shake gestures to send our notification instead.
extension UIWindow {
     open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            NotificationCenter.default.post(name: UIDevice.deviceDidShakeNotification, object: nil)
        }
     }
}

// A view modifier that detects shaking and calls a function of our choosing.
struct DeviceShakeViewModifier: ViewModifier {
    let action: () -> Void

    func body(content: Content) -> some View {
        content
            .onAppear()
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.deviceDidShakeNotification)) { _ in
                action()
            }
    }
}

// A View extension to make the modifier easier to use.
extension View {
    func onShake(perform action: @escaping () -> Void) -> some View {
        self.modifier(DeviceShakeViewModifier(action: action))
    }
}
