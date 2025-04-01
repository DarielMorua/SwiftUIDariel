

import Foundation

class ItemViewModel: ObservableObject {
    @Published var items: [ItemModel] = [
        ItemModel (name: "iPhone", description: "Apple Smartphone"),
        ItemModel (name: "iMac", description: "Apple Computer"),
        ItemModel (name: "AirBuds", description: "Apple Headphones"),
    ]
    
    func refreshData(){
        let newItem = [
            ItemModel (name: "iMac", description: "Apple Computer"),
            ItemModel (name: "AirBuds", description: "Apple Headphones"),
        
        ]
        DispatchQueue.main.asyncAfter(deadline: .now()+1.5){
            self.items = newItem
        }
    }
    
}
