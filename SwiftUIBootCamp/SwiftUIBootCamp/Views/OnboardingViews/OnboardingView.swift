//
//  OnboardingView.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 02/07/23.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var onboardingState: Int = 0
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    var body: some View {
        ZStack {
            
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSextion
                case 1:
                    addNameSection
                case 2:
                    addAgeSection
                case 3:
                    addGenderSection
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                }
            }
            
            VStack {
                Spacer()
                bottonButton
            }
            .padding(30)
        }
    }
}

struct OboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
    }
}

extension OnboardingView {
    private var bottonButton: some View {
        Text(onboardingState == 0 ? "Sign UP" : onboardingState == 3 ? "Finish" : "Next")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .animation(nil)
            .onTapGesture {
                handleNextButtonPressed()
            }
    }
    
    private var welcomeSextion: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom
                )
            Text("This is the #1 app fpr finding your match online! In this tutorial we are practicing using appStorage and other SwiftUI Tectniques.")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    
    private var addNameSection: some View {
        VStack(spacing: 20) {
            Spacer()
           
            Text("What is your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Yout namehere...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
           
            Text("What is your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\( String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
           Slider(value: $age,
                  in: 18...100,
                  step: 1)
           .accentColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
           
            Text(gender.count > 1 ? gender : "Select a gender")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Picker(selection: $gender, label:
                    Text("Select a gender")
                .font(.headline)
                .foregroundColor(.purple)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(10)
            ) {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
                Text("Non-Binary").tag("Non-Binary")
                
            }
            .pickerStyle(MenuPickerStyle())
          
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    
}

extension OnboardingView {
    func handleNextButtonPressed() {
        if onboardingState == 3 {
            
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
}
