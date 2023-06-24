//
//  StructBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 23/06/23.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayNmae: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct StructBootcamp: View {
    
    @State var users: [UserModel] = [
//    "Emily", "Nick", "Samantha", "Cris"
        UserModel(displayNmae: "Nick", userName: "Nick123", followerCount: 100, isVerified: true),
        UserModel(displayNmae: "Emily", userName: "Emily123", followerCount: 55, isVerified: false),
        UserModel(displayNmae: "Samantha", userName: "Samantha123", followerCount: 355, isVerified: true),
        UserModel(displayNmae: "Cris", userName: "Cris123", followerCount: 88, isVerified: true)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayNmae)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                            
                       
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("users")
        }
    }
}

struct StructBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StructBootcamp()
    }
}
