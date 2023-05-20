//
//  MapAppApp.swift
//  MapApp
//
//  Created by Paulo Danilo Conceição Lima on 19/05/23.
//

import SwiftUI

@main
struct MapAppApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
