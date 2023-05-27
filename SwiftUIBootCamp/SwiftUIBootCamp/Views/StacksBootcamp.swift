//
//  StacksBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 26/05/23.
//

import SwiftUI

struct StacksBootcamp: View {
    // VStack - vertical
    // hStack - Horizontal
    // xStack - zIndex (back to front)
    var body: some View {
//        ZStack(alignment: .top) {
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//            VStack(alignment: .leading, spacing: 30) {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//
//
//                HStack(alignment: .bottom){
//                    Rectangle()
//                        .fill(Color.purple)
//                        .frame(width: 50, height: 50)
//
//                    Rectangle()
//                        .fill(Color.pink)
//                        .frame(width: 75, height: 75)
//
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 25, height: 25)
//                }
//                .background(Color.white)
//
//            }
//            .background(Color.black)
//        }
        
        
//        HStack {
//            Text("5")
//                .font(.largeTitle)
//                .foregroundColor(.blue)
//
//            Text("Items in your cart:")
//                .font(.caption)
//                .foregroundColor(.gray)
//
//        }
        
        
        VStack(spacing: 100) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
