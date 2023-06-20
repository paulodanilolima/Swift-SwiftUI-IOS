//
//  DarkModeBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 17/06/23.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("this text is PRIMARY")
                        .foregroundColor(.primary)
                    Text("This text is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("This text is Black")
                        .foregroundColor(.black)
                    Text("This text is White")
                        .foregroundColor(.white)
                    Text("This text is Red")
                        .foregroundColor(.red)
                    Text("This text is Globaly Adaptive")
                        .foregroundColor(Color("CustomColor"))
                    
                    Text("This color is locally adaptive")
                        .foregroundColor(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeBootcamp()
    }
}
