import SwiftUI

class WaterViewModel: ObservableObject {
    @Published var water: Int = 0
    
    func calculateWaterIntake(intake: Int) -> Int {
        water += intake
        return water
    }
    func resetWater(){
        water = 0
    }
}
