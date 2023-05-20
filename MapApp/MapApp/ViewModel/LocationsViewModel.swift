//
//  LocationsViewModel.swift
//  MapApp
//
//  Created by Paulo Danilo Conceição Lima on 20/05/23.
//

import Foundation

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location]
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
    }
    
}
