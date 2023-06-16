//
//  TabViewsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 15/06/23.
//

import SwiftUI

struct TabViewsBootcamp: View {
    
    let icons: [String] = [
    "heart.fill", "globe", "house.fill", "Person.fill"
    ]
    @State var selecteTab: Int = 2
    
    var body: some View {
//        TabView(selection: $selecteTab) {
//            HomeView(selecteTab: $selecteTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            Text("Browse Tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            Text("Profile Tab")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
//        .accentColor(.red)
        
        TabView {
            
            ForEach(icons, id:\.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
                
            }.background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .center, startRadius: 5, endRadius: 300))
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.red)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.green)
//            RoundedRectangle(cornerRadius: 25.0)
        }
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct TabViewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewsBootcamp()
    }
}

struct HomeView: View {
    
    @Binding var selecteTab: Int
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack{
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button {
                    selecteTab = 2
                } label: {
                    Text("Go to Profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                }
            }
        }
    }
}
