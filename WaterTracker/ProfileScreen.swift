import SwiftUI

struct ProfileScreen: View {
    @State private var name: String = ""
    @State private var age: String = ""
    @State private var weight: String = ""
    @AppStorage("appStorageName") var appStorageName: String = ""
    @AppStorage("appStorageAge") var appStorageAge: String = ""
    @AppStorage("appStorageWeight") var appStorageWeight: String = ""

    
    var body: some View {
        VStack (alignment: .center, spacing: 10){
            Text("Sign Up")
                .bold()
            Text("Name: ")
            TextField("Enter your name: ", text: $name)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Age: ")
            TextField("Enter your age: ", text: $age)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Weight: ")
            TextField("Enter your Weight: ", text: $weight)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                appStorageName = name;
                appStorageAge = age;
                appStorageWeight = weight;
                print("click")}){
                Text("Send")
            }
        }
        .padding().onAppear{
            name = appStorageName
            age = appStorageAge
            weight = appStorageWeight
        }
    }
}

#Preview {
    ProfileScreen()
}
