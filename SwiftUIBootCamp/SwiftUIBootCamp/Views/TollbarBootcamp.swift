//
//  TollbarBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 10/07/23.
//

import SwiftUI

struct TollbarBootcamp: View {
    
    @State private var text: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.indigo.ignoresSafeArea()
                
                ScrollView {
                    
                    TextField("Placeholder", text: $text)
                    
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .background(Color.blue)
                            .frame(width: 200, height: 200)
                        
                    }
                    
                }
                
            }
            .navigationTitle("Tollbar")
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear")
//            )
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "gear")
                }
            }
            .toolbarBackground(.hidden, for: .navigationBar)
        }
    }
}

struct TollbarBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TollbarBootcamp()
    }
}
