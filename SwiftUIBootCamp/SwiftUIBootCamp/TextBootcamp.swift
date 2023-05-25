//
//  TextBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 24/05/23.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World!" /*This is the swiftful thinking Bootcamp. I am really enjoying this course and learning a lot"*/)
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough()
//            .font(.system(size: 23, weight: .semibold, design: .monospaced))
//            .baselineOffset(-50)
//            .kerning(10)
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
