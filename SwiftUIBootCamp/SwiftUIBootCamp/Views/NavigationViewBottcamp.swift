//
//  NavigationViewBottcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 03/06/23.
//

import SwiftUI

struct NavigationViewBottcamp: View {
    var body: some View {
        NavigationView {
           
            ScrollView {
                
                NavigationLink("Hello, world", destination: MyOtherScreen())
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            //            .navigationBarTitleDisplayMode(.inline)
            //            .navigationBarItems(leading: Image(systemName: "person.fill", trailing: Image(systemName: "")))
            .navigationBarItems(leading:
                                    
                                    HStack {
                Image(systemName: "person.fill")
                Image(systemName: "flame.fill")
            }
                                    
                                  ,
                                trailing: NavigationLink(destination: MyOtherScreen(),
                                                         label: {
                Image(systemName: "gear")
            }))
            .accentColor(.red)

        }
    }
}

struct MyOtherScreen: View {
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
//                .navigationBarHidden(true)
            
            VStack {
                Button("BACK Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Clique here", destination: Text("3rd screen!"))
            }
            
           
        }
    }
}

struct NavigationViewBottcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBottcamp()
    }
}
