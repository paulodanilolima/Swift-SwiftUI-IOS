//
//  SafeAreaInsetBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 10/07/23.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Insets")
            .safeAreaInset(edge: .bottom, alignment: .center, spacing: nil) {
                Text("Hi")
                .frame(maxWidth: .infinity)
                .background(Color.yellow)
            }
            
        }
    }
}

struct SafeAreaInsetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsetBootcamp()
    }
}
