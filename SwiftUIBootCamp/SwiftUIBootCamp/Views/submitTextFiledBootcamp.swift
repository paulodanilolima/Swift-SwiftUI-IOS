//
//  submitTextFiledBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 06/07/23.
//

import SwiftUI

struct submitTextFiledBootcamp: View {
    
    @State var str: String = ""
    
    var body: some View {
        TextField("Placeholder", text: $str)
            .submitLabel(.route)
            .onSubmit {
                print("Something to the console!")
            }
    }
}

struct submitTextFiledBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        submitTextFiledBootcamp()
    }
}
