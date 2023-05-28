//
//  SwiftUIBootCampApp.swift
//  SwiftUIBootCamp
//
//  Created by Paulo Danilo Conceição Lima on 24/05/23.
//

import SwiftUI

@main
struct SwiftUIBootCampApp: App {
    var body: some Scene {
        WindowGroup {
            HStack {
                InitializerBootcamp( count: 55, fruit: .apple)
                InitializerBootcamp( count: 46, fruit: .orange)
            }
        }
    }
}
