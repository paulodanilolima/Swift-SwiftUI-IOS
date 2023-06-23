//
//  TapgestureBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 22/06/23.
//

import SwiftUI

struct TapgestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack(spacing: 40) {
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            }
            
            Text("Tap Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
//                .onTapGesture {
//                    isSelected.toggle()
//                }
            
            Spacer()
        }
        .padding(40)
    }
}

struct TapgestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapgestureBootcamp()
    }
}
