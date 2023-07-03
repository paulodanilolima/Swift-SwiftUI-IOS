//
//  IntroView.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 02/07/23.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSigned: Bool = false
    
    
    var body: some View {
        ZStack {
            RadialGradient(
                gradient: Gradient(colors: [.purple, .blue]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()
            
            if currentUserSigned {
                Text("profileView")
            } else {
                OnboardingView()
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
