//
//  LocationsView.swift
//  MapApp
//
//  Created by Paulo Danilo Conceição Lima on 20/05/23.
//

import SwiftUI

struct LocationsView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    
    var body: some View {
        List {
            ForEach(vm.locations) { location in 
                Text(location.name ?? "")
            }
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
    }
}
