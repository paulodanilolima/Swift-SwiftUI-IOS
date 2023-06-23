//
//  IfletGuardLetBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 22/06/23.
//

import SwiftUI

struct IfletGuardLetBootcamp: View {
    
    @State var currentUserID: String? = "123424"
    @State var displayText: String?
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Safe Coding")
                
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData2()
            }
        }
    }
    
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new Data! User id is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error there is no user ID"
        }
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error there is no user ID"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new Data! User id is: \(userID)"
            isLoading = false
        }
    }
}

struct IfletGuardLetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfletGuardLetBootcamp()
    }
}
