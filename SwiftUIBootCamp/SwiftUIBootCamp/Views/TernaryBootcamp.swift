//
//  TernaryBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 30/05/23.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStatingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStatingState.description)") {
                isStatingState.toggle()
            }
            
            Text(isStatingState ? "Stating State" : "Ending State")
            
            RoundedRectangle(cornerRadius: isStatingState ? 25 : 0)
                .fill(isStatingState ? Color.red : Color.blue)
                .frame(width: isStatingState ? 200 : 50,
                       height: isStatingState ? 400 : 50)
            
            Spacer()
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
