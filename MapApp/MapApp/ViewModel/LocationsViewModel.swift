//
//  LocationsViewModel.swift
//  MapApp
//
//  Created by Paulo Danilo Conceição Lima on 20/05/23.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    // All loaded locations
    @Published var locations: [Location]
    //Current location
    @Published var mapLocation: Location {
        didSet {
            updateMapRegion(location: mapLocation)
        }
    }
    
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location: Location) {
        withAnimation(.easeOut) {
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan)
        }
       
    }
    
}
