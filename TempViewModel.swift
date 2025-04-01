
import SwiftUI

class TempViewModel: ObservableObject {
    
    @Published var celsius: String = ""
    @Published var result: Double?
    func calculateTemp()->Double {
        let celsiusResult = Double(celsius)
        result = ((celsiusResult ?? 0.0 * (9/5))+32)
        return result ?? 0
    }
    
    var image: String {
        if (result ?? 0.0)<=32{
            return "cold"
        }
        else if (result ?? 0.0)>32 && (result ?? 0.0) < 86{
            return "beach"

        }
        else{
            return "sun"

        }
        
    }
    
}
