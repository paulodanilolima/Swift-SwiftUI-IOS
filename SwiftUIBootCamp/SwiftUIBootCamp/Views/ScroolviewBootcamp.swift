//
//  ScroolviewBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 27/05/23.
//

import SwiftUI

struct ScroolviewBootcamp: View {
    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false) {
//        HStack {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 300 ,height: 300)
//                }
//            }
//        }
        
        ScrollView {
            LazyVStack {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ScroolviewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScroolviewBootcamp()
    }
}
