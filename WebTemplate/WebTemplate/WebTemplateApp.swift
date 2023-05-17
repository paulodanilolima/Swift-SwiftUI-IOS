//
//  WebTemplateApp.swift
//  WebTemplate
//
//  Created by Paulo Danilo Conceição Lima on 16/05/23.
//

import SwiftUI

@main
struct WebTemplateApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: HomeViewModel.shared)
        }
    }
}
