//
//  GroupBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 10/07/23.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, world!")
            
            Group {
                Text("Hello, world!")
                Text("Hello, world!")
            }
            .font(.caption)
            .foregroundColor(.green)
           
        }
        .foregroundColor(.red)
    }
}

struct GroupBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GroupBootcamp()
    }
}
