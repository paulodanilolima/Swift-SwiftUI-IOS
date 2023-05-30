//
//  ExtractFunctionsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 30/05/23.
//

import SwiftUI

struct ExtractFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("PRESS ME")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }

        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractFunctionsBootcamp()
    }
}
