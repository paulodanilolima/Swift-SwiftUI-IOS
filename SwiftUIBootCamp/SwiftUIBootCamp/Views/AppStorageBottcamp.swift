//
//  AppStorageBottcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 27/06/23.
//

import SwiftUI

struct AppStorageBottcamp: View {

    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name = "Emily"
                currentUserName = name
            }
        }

    }
}

struct AppStorageBottcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBottcamp()
    }
}
