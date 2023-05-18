//
//  WebTemplateApp.swift
//  WebTemplate
//
//  Created by Paulo Danilo Conceição Lima on 16/05/23.
//

import SwiftUI

@main
struct WebTemplateApp: App {
    @StateObject private var homeViewModel = HomeViewModel(service: WebTemplateService.shared)
    @StateObject private var homeCoordinator = HomeCoordinator()

    var body: some Scene {
        WindowGroup {
            HomeView(viewModel: homeViewModel)
                .environmentObject(homeCoordinator)
                .onAppear {
                    homeCoordinator.start(service: WebTemplateService.shared, viewModel: homeViewModel)
                }
        }
    }
}
