//
//  Location.swift
//  MapApp
//
//  Created by Paulo Danilo Conceição Lima on 19/05/23.
//

import Foundation
import MapKit

struct Location: Identifiable, Equatable  {
   
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    var id: String {
        "\(String(describing: name))" + "\(String(describing: cityName))"
    }
    
    // Equatable
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
}
