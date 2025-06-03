//
//  clubViewModel.swift
//  mobileProjects
//
//  Created by ITIT2 on 28/04/25.
//

import Foundation

@MainActor
class ClubsViewModel: ObservableObject{
    @Published var racquetballPlaces: [PlaceAnnotation] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    func fetchPlaces(){
        guard let url = URL(string:
                                "https://eleventenback.onrender.com/api/locations") else {
            self.errorMessage = "URL Invaluda"
            return
        }
        isLoading = true
        errorMessage = nil
        
        Task {
            do{
                let (data,_) = try await URLSession.shared.data(from: url)
                let decoder = JSONDecoder()
                let places = try decoder.decode([PlaceAnnotation].self, from: data)
                racquetballPlaces = places
            }
            catch{
                errorMessage = "Error al cargar: \(error.localizedDescription)"
            }
            isLoading = false
        }
    }
}
