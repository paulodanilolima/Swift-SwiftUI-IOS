//
//  HomeCoordinator.swift
//  WebTemplate
//
//  Created by Paulo Danilo Conceição Lima on 17/05/23.
//

import SwiftUI

class HomeCoordinator: ObservableObject {
    @Published var isActive: Bool = false
    var viewModel: HomeViewModel!
    var service: WebTemplateService!
    
    func start(service: WebTemplateService, viewModel: HomeViewModel) {
        self.service = service
        self.viewModel = viewModel
        isActive = true
        viewModel.coordinatorDelegate = self
    }
}

extension HomeCoordinator: HomeCoordinadorDelegate {
    func goToFirst() {
        isActive = false
                
                // Create a new instance of the view you want to navigate to
        let firstView = FirstView(viewModel: FirstViewModel(service: self.service)) // Replace with the actual view and its associated view model
                
                // Wrap the new view in a navigation view and set isActive to true to push the new view
                let navigationView = NavigationView {
                    firstView
                }
                isActive = true
    }
}





