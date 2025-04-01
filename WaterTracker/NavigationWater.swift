import SwiftUI


struct NavigationWater: View{
    
    var body: some View{
        VStack(){
            NavigationView{
                VStack(alignment:.center){
                    NavigationLink (
                        destination: ProfileScreen()
                    )  {
                        Text(  "Profile Screen")
                        
                        
                    }
                    Spacer().frame(height:20)
                    NavigationLink (
                        destination: WaterTrackerView()
                    )  {
                        Text(  "Water Tracker")
                        
                        
                    }
                    Spacer()
                }.padding()
            }
        }
    }
}
