//
//  FocusStateBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 06/07/23.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingFilds {
        case username
        case password
    }
    
//    @FocusState private var usernamInFocuse: Bool
    @State private var username: String = ""
    
//    @FocusState private var passwordInFocuse: Bool
    @FocusState private var fieldInFocus: OnboardingFilds?
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name here...", text: $username)
//                .focused($usernamInFocuse)
                .focused($fieldInFocus, equals: .username)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password here...", text: $password)
//                .focused($passwordInFocuse)
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("Sign UP") {
                let usernameisValide = !username.isEmpty
                let passwordisValid = !password.isEmpty
                
                if usernameisValide && passwordisValid {
                    print("SignUP")
                } else if usernameisValide {
                    fieldInFocus = .password
//                    usernamInFocuse = false
//                    passwordInFocuse = true
                } else {
                    fieldInFocus = .username
//                    usernamInFocuse = true
//                    passwordInFocuse = false
                }
            }
//
//            Button("Toggle Focus State") {
//                usernamInFocuse.toggle()
//            }
//        }
       
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.usernamInFocuse = true
//            }
        }
        .padding(40)
    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
