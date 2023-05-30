//
//  ExtrectSubViewBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 30/05/23.
//

import SwiftUI

struct ExtrectSubViewBootcamp: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 2, color: .red)
            MyItem(title: "Oranges", count: 10, color: .orange)
            MyItem(title: "Bananas", count: 34, color: .yellow)
        }
    }
}


struct ExtrectSubViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtrectSubViewBootcamp()
    }
}


struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
