//
//  ListDetailExampleView.swift
//  mobile2
//
//  Created by ITIT2 on 19/03/25.
//

import SwiftUI

struct ListDetailExampleView: View {
    let item: ItemModel

    var body: some View{
        VStack{
            Text(item.name)
                .font(.largeTitle)
                .bold()
            Text(item.description)
                .font(.largeTitle)
                .bold()
            Spacer()
        }
    }   
    
}
