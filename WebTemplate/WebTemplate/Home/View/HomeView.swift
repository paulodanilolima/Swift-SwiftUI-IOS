//
//  ContentView.swift
//  WebTemplate
//
//  Created by Paulo Danilo Conceição Lima on 16/05/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    var viewModel: HomeViewModel!
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ZStack {
            Color.darkBlue
                .ignoresSafeArea()
            VStack {
                Text("WELCOME!")
                    .font(.title)
                    .padding()
                    .foregroundColor(.white)
                    .bold()
                
                Image("bank")
                    .resizable()
                    .frame(width: 250.0, height: 250.0)
                    .padding()
                    .scaledToFit()
                
                VStack {
                    Color.white
                        .ignoresSafeArea()
                        .overlay {
                            VStack(spacing: 20) {
                                TextField("Username or Email", text: $username)
                                    .padding()
                                    .frame(width: 250.0, height: 50.0, alignment: .center)
                                    .border(.gray, width: 3.0)
                                    .cornerRadius(15)
                                
                                
                                SecureField("Password", text: $password)
                                    .padding()
                                    .frame(width: 250.0, height: 50.0, alignment: .center)
                                    .border(.gray, width: 3.0)
                                    .cornerRadius(15)
                                
                                Button(action: {
                                    viewModel.goToFirst()
                                }, label: {
                                    Text("LOG IN")
                                        .foregroundColor(.white)
                                        .padding()
                                        .frame(width: 150.0, height: 45.0)
                                        .background(Color.darkBlue)
                                        .cornerRadius(15)
                                })
                                
                                Button(action: {
                                    viewModel.fetchData()
                                }, label: {
                                    Text("Forgot Password?")
                                        .foregroundColor(Color.blue)
                                        .padding()
                                        .underline()
                                        .frame(width: 200.0, height: 45.0)
                    
                    
                                })
                                
                                HStack(spacing: 2.0) {
                                    Text("New to Bank Apps?")
                                    
                                    Button(action: {
                                        viewModel.fetchData()
                                    }, label: {
                                        Text("Sign Up")
                                            .foregroundColor(Color.blue)
                                            .underline()
                                            .frame(width: 75.0, height: 45.0)
                                    })
                                }.padding(-35)
                            }.padding(.top, 50.0)
                        }
                }
            }
        }
    }
}
