//
//  ImagesBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 26/05/23.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
       Image("books")
//            .renderingMode(.template)
            .resizable()
            .frame(width: 300, height: 300)
//            .foregroundColor(.red)
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
//            .scaledToFill()
//            .clipped()
//            .cornerRadius(150)
//            .clipShape(
//                Circle()
//                    Ellipse()
                
//            )
    }
}

struct ImagesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImagesBootcamp()
    }
}
