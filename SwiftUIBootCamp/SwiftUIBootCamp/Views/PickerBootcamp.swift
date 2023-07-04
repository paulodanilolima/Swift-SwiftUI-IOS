//
//  PickerBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 09/06/23.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "1"
    
    let filterOptions: [String] = [
        "most Recent",
        "Most Popuklar",
        "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
//        VStack {
//
//            HStack {
//                Text("Age:")
//                Text(selection)
//            }
//
//            Picker(
//                selection: $selection,
//                label: Text("Picker"),
//                content: {
//                    ForEach(18..<100) { number in
//                        Text("\(number)")
//                            .font(.headline)
//                            .foregroundColor(.red)
//                            .tag("\(number)")
//                    }
//                })
//            .pickerStyle(WheelPickerStyle())
////            .background(Color.gray.opacity(0.3))
//        }
//
//        Picker(
//            selection: .constant(1),
//            label:
//                HStack{
//                    Text("Filter")
//                    Text(selection)
//                }
//                .font(.headline)
//                .foregroundColor(.white)
//                .padding()
//                .padding(.horizontal)
//                .background(Color.blue)
//                .cornerRadius(10)
//                .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)
//                ,
//
//            content: {
//                ForEach(filterOptions, id: \.self) { option in
//                    HStack {
//                        Text(option).tag(option)
//                        Image(systemName: "heart.fill")
//                    }
//                }
//            })
        
        Picker(
            selection: $selection,
            content: {
//            ForEach(filterOptions.indices) { index in
//                Text(filterOptions[index]).tag(filterOptions[index])
//            }
            
        }) {
            Text("Picker")
        }
        .pickerStyle(SegmentedPickerStyle())
       
    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
