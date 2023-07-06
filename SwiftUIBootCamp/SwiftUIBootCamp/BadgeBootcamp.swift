//
//  BadgeBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 05/07/23.
//

import SwiftUI

struct BadgeBootcamp: View {
    var body: some View {
        
        List {
            Text("Hello")
                .badge(10)
            Text("Hello")
            Text("Hello")
            Text("Hello")
            Text("Hello")
        }
        
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                }
                .badge(5)
            
            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                }
                .badge(1)
            
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                }
                .badge(11)
        }
    }
}

struct BadgeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBootcamp()
    }
}
