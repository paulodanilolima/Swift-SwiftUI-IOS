//
//  AlertBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 04/06/23.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: myAlerts? = nil
//    @State var alertTitle: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    enum myAlerts {
        case success
        case error
    }
    
    var body: some View {
        
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            VStack {
                Button("Button 1") {
                    alertType = .error
//                    alertTitle = "Error Uploading video"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                
                Button("Button 2") {
                    alertType = .success
//                    alertTitle = "Successfully uploaded video "
//                    alertMessage = "Yout video is now public!"
                    showAlert.toggle()
                }
            }
            
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    
    func getAlert() -> Alert {
        
        switch alertType {
        case .error:
            return Alert(title: Text("There was a error"))
        case .success:
            
            return Alert(title: Text("This was a success"), message: nil,
                         dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))
        default:
            return Alert(title: Text("Error"))
        }
        
//        return Alert(title: Text(alertTitle),
//                     message: Text(alertMessage),
//                     dismissButton: .default(Text("OK")))
        //        return Alert(title: Text("This is the title"),
        //                     message: Text("Here we will describe the error"),
        //                     primaryButton: .destructive(Text("Delete"), action: {
        //            backgroundColor = .red
        //        }),
        //                     secondaryButton: .cancel())
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
