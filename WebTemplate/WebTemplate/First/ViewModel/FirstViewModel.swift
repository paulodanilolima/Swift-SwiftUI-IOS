//
//  FirstViewModel.swift
//  WebTemplate
//
//  Created by Paulo Danilo Conceição Lima on 17/05/23.
//

import Foundation

protocol FirstCoordinadorDelegate {
}

class FirstViewModel: ObservableObject {
    var coordinatorDelegate: FirstCoordinadorDelegate!
    var service: WebTemplateService
    
    init(service: WebTemplateService) {
        self.service = service
    }
}
