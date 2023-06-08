//
//  TextEditor.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 08/06/23.
//

import SwiftUI

struct TextEditor: View {
    @State var textEditorText: String = "this is the statinf text"
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(textEditorText: textEditorText)
                    .frame(height: 250)
                    .background(Color.red)
                
                Button {
                    
                } label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Spacer()
            }
            .padding()
            .navigationTitle("TextEdit Bootcamp")
        }
    }
}

struct TextEditor_Previews: PreviewProvider {
    static var previews: some View {
        TextEditor()
    }
}
