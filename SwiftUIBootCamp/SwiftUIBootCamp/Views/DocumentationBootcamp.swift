//
//  DocumentationBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 20/06/23.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: - PROPERTIES
    
    @State var data: [String] = [
    "Apples", "Oranges", "Bananas"
    ]
    @State var showAlert: Bool = false
    
    // MARK: - BODY
    
    // Working copy - things to do:
    /*
    things to do
    */
    
    var body: some View {
        NavigationView{ // Start: NAV
            
            ZStack {
                Color.red.ignoresSafeArea()
                
                foregraLayder
                .navigationTitle("Documentation")
                .navigationBarItems(trailing:
                                        Button("Alert", action: {
                    showAlert.toggle()
                })
                ).alert(isPresented: $showAlert) {
                    getAlert("This is the alert")
                }
            }
        }// End: NAV
    }
    /// This is the foreground layer thatt holds a scroolView
    private var foregraLayder: some View {
        ScrollView {// Start: ScollV
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
                
            }
        }// End: ScollV
    }
    
    // MARK: - FUNCTIONS
    
    /// Gets a alert with a specified title
    ///
    /// This functions creats and returns an alert immediately. The alert will have a title base on the text paramenter but it will NOT have a message
    /// ```
    ///getAlert("Hi") - > Alert(title: Text("Hi")
    /// ```
    ///
    /// - Warning: There is not additional messa in this Alert
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an alert wit a title
    func getAlert(_ text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: - PREVIEW

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
