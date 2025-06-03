//
//  clubView.swift
//  mobileProjects
//
//  Created by ITIT2 on 28/04/25.
//


import SwiftUI
import MapKit
struct ClubsView: View{
    @StateObject private var viewModel = ClubsViewModel()
    @State private var selectedPlace: PlaceAnnotation?
    @State private var showingMap = false
    
    
    var body: some View{
        NavigationView {
            VStack{
                if viewModel.isLoading{
                    ProgressView("Cargando clubes...")
                        .padding()
                    
                }
                else if let error = viewModel.errorMessage{
                    Text(error)
                        .foregroundColor(.red)
                        .padding()
                }
                else{
                    List(viewModel.racquetballPlaces){
                        place in
                        HStack{
                            Image(place.imageUrl)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 50,height: 50)
                            
                            VStack(alignment: .leading){
                                Text(place.name)
                                    .font(.headline)
                                Text(place.address)
                                    .font(.subheadline)
                            }
                            
                        }
                        .padding()}
                    
                }
            }
        }
    }
    
}
