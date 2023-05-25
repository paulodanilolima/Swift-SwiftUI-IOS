//
//  ColorsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 24/05/23.
//

import SwiftUI

struct ColorsBootcamp: View {
    
    var color = Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.clear
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
//            .background(color)
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: -20)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
