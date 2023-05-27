//
//  PaddingAndSpacingBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 26/05/23.
//

import SwiftUI

struct PaddingAndSpacingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text( "Hello, world!" )
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            //            .frame(maxWidth: .infinity, alignment: .leading)
            //            .background(Color.red)
            //            .padding(.leading, 20)
            //            .background(Color.yellow)
            //            .padding()
            //            .padding(.all, 10)
            //            .padding(.all, 10)
            //            .padding(.leading, 20)
            //            .background(Color.blue)
            
            Text("This is the description of what we will do onthis screen. It is multiple lines and we will align the text to the leading edge")
                .multilineTextAlignment(.leading)
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0.0, y: 10)
        )
        .padding(.horizontal, 10)
//        .background(Color.green)
    }
}

struct PaddingAndSpacingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacingBootcamp()
    }
}
