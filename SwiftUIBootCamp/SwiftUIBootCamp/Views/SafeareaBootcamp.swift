//
//  SafeareaBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 28/05/23.
//

import SwiftUI

struct SafeareaBootcamp: View {
    var body: some View {
//        ZStack {
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//
//            VStack{
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
//        }
        
        ScrollView {
            Text("Title goes here")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.white)
                    .frame(height: 150)
                    .shadow(radius: 10)
                    .padding(20)
                
            }
        }
        .background(
            Color.red
//                .edgesIgnoringSafeArea(.all) // old
                .ignoresSafeArea()
        )
        
    }
}

struct SafeareaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeareaBootcamp()
    }
}
