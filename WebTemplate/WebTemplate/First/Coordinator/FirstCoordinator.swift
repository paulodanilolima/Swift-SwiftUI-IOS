//
//  FirstCoordinator.swift
//  WebTemplate
//
//  Created by Paulo Danilo Conceição Lima on 17/05/23.
//

import SwiftUI

class FirstCoordinator: ObservableObject {
    @Published var isActive: Bool = false
    var viewModel: FirstViewModel!
    
    func start(service: WebTemplateService, viewModel: FirstViewModel) {
        isActive = true
        self.viewModel = viewModel
        viewModel.coordinatorDelegate = self
    }
}

extension FirstCoordinator: FirstCoordinadorDelegate {
    
}



