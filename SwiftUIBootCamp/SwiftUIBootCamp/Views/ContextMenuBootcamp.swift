//
//  ContextMenuBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 06/06/23.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgrounfColor: Color = .blue
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swift Thinking")
                .font(.headline)
            Text("How to use context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgrounfColor.cornerRadius(30))
        .contextMenu(menuItems: {
            Button {
                backgrounfColor = .yellow
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }

            Button {
                backgrounfColor = .red
            } label: {
                Text("Report post")
            }
            
            Button {
                backgrounfColor = .green
            } label: {
                HStack {
                    Text("Like Post")
                    Image(systemName: "heart.fill")
                }
            }

        })
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
