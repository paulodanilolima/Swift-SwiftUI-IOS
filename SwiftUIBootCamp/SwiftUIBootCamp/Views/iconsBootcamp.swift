//
//  iconsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 25/05/23.
//

import SwiftUI

struct iconsBootcamp: View {
    var body: some View {
       Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
//            .font(.system(size: 200))
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
//            .scaledToFill()
//            .frame(width: 300, height: 300)
//            .foregroundColor(.green)
//            .clipped()
    }
}

struct iconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        iconsBootcamp()
    }
}
