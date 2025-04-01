
import SwiftUI

struct ListExampleView: View {
    @StateObject private var viewModel = ItemViewModel()
    var body: some View {
        NavigationStack {
            List(viewModel.items){
                item in NavigationLink(destination: ListDetailExampleView(item:item)) {
                    Text(item.name)
                }
            }
            .navigationTitle("Apple Products")
            .refreshable {
                viewModel.refreshData()
            }
        }
    }
}

#Preview {
    ListExampleView()
}
