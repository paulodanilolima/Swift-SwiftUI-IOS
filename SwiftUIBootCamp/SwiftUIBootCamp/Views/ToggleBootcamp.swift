//
//  ToggleBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 08/06/23.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    
    var body: some View {
        VStack{
            
            HStack{
                Text("Status")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            
            Toggle(
                isOn: $toggleIsOn) {
                    Text("Change Status")
                }
                .toggleStyle(SwitchToggleStyle(tint: Color.purple))
            
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
