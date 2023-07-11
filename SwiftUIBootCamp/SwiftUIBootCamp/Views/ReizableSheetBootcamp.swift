//
//  ReizableSheetBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 10/07/23.
//

import SwiftUI

struct ReizableSheetBootcamp: View {
    
    @State private var showSheet:Bool = false
    @State private var detentes: PresentationDetent = .large
    
    var body: some View {
        Button("Click me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(dentents: $detentes)
//                .presentationDetents([.large, .fraction(0.1)])
//                .presentationDragIndicator(.hidden)d
                .presentationDetents([.medium, .large], selection: $detentes)
        }
    }
}

struct MyNextView: View {
    
    @Binding var dentents: PresentationDetent
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack {
                Button("MEDIUM") {
                    dentents = .medium
                }
                
                Button("LARGE") {
                    dentents = .large
                }
            }
        }
    }
}

struct ReizableSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ReizableSheetBootcamp()
    }
}
