//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Paulo Danilo Conceição Lima on 18/05/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            VStack {
                HikeView(hike: ModelData().hikes[0])
                    .padding()
                Spacer()
            }
        }
    }
}
