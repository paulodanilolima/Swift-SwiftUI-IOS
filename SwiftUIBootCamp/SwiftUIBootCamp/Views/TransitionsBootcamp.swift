//
//  TransitionsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 01/06/23.
//

import SwiftUI

struct TransitionsBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.move(edge: .bottom))
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
                    .transition(.asymmetric(insertion: .move(edge: .leading),
                                            removal: .move(edge: .bottom)))
                    .animation(.easeInOut)
                    .padding()
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionsBootcamp()
    }
}
