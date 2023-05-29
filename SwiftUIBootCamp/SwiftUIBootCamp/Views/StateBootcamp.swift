//
//  StateBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 29/05/23.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backGorundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backGorundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                
                Text("\(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button {
                        backGorundColor = .red
                        myTitle = "BUTTON 1 Was pressed"
                        count += 1
                    } label: {
                        Text("Button 1")
                    }
                    
                    Button {
                        backGorundColor = .purple
                        myTitle = "BUTTON 2 Was pressed"
                        count += 1
                    } label: {
                        Text("Button 2")
                    }

                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
