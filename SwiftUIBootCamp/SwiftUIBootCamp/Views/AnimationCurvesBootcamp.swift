//
//  AnimationCurvesBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 31/05/23.
//

import SwiftUI

struct AnimationCurvesBootcamp: View {
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    var body: some View {
        VStack {
            Button("button") {
                isAnimating.toggle()
            }
            
//            RoundedRectangle(cornerRadius: 20.0)
//                .frame(width:isAnimating ? 350 : 50,
//                       height: 100)
//                .animation(.linear(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20.0)
//                .frame(width:isAnimating ? 350 : 50,
//                       height: 100)
//                .animation(.easeIn(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20.0)
//                .frame(width:isAnimating ? 350 : 50,
//                       height: 100)
//                .animation(.easeInOut(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20.0)
//                .frame(width:isAnimating ? 350 : 50,
//                       height: 100)
//                .animation(.easeOut(duration: timing))
            
            
            RoundedRectangle(cornerRadius: 20.0)
                .frame(width:isAnimating ? 350 : 50,
                       height: 100)
//                .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1.0))
        }
    }
}

struct AnimationCurvesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurvesBootcamp()
    }
}
