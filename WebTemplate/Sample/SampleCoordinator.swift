//
//  <#Coordinator#>Coordinator.swift
//  WebTemplate
//
//  Created by Paulo Danilo Conceição Lima on 17/05/23.
//

import SwiftUI

class <#Coordinator#>Coordinator: ObservableObject {
    @Published var isActive: Bool = false
    var viewModel: <#Coordinator#>ViewModel!
    
    func start(service: WebTemplateService, viewModel: <#Coordinator#>ViewModel) {
        isActive = true
        self.viewModel = viewModel
        viewModel.coordinatorDelegate = self
    }
}

extension <#Coordinator#>Coordinator: <#Coordinator#>CoordinadorDelegate {
}



