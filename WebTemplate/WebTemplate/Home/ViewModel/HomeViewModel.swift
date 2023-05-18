//
//  HomeViewModel.swift
//  WebTemplate
//
//  Created by Paulo Danilo Conceição Lima on 16/05/23.
//

import Foundation

protocol HomeCoordinadorDelegate {
    func goToFirst()
}


class HomeViewModel: ObservableObject {
    // Add necessary properties and methods
    
    var coordinatorDelegate: HomeCoordinadorDelegate!
    var service: WebTemplateService
    
    init(service: WebTemplateService) {
        self.service = service
    }
    
    func fetchData() {
        print("Hi")
    }
    
    func goToFirst() {
        coordinatorDelegate.goToFirst()
    }
}
