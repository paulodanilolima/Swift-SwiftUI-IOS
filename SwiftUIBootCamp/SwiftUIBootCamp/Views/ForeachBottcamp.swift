//
//  ForeachBottcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 27/05/23.
//

import SwiftUI

struct ForeachBottcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
//        VStack {
//            ForEach(0..<10) { index in
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//
//                    Text("Index is: \(index)")
//                }
//            }
//        }
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
        }
    }
}

struct ForeachBottcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForeachBottcamp()
    }
}
