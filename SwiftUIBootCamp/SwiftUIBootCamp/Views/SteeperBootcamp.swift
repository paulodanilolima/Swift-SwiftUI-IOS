//
//  SteeperBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 14/06/23.
//

import SwiftUI

struct SteeperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        
        VStack
        {
            Stepper("stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper 2") {
                incrementWidth(amount: 100)
            } onDecrement: {
                incrementWidth(amount: -100)
            }
        }
       
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeOut) {
            widthIncrement += amount
        }
    }
}

struct SteeperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SteeperBootcamp()
    }
}
