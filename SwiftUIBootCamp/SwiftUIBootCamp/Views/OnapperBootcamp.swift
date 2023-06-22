//
//  OnapperBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 21/06/23.
//

import SwiftUI

struct OnapperBootcamp: View {
    
    @State var myText: String = "Start Text."
    @State var count: Int = 0
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                        
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new Text!"
                }
            })
            .onDisappear(perform: {
                myText = "Ending text."
            })
            .navigationTitle("On Appear: \(count)")
        }
    }
}

struct OnapperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnapperBootcamp()
    }
}
