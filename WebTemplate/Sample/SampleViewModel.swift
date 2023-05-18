//
//  <#ViewModel#>ViewModel.swift
//  WebTemplate
//
//  Created by Paulo Danilo Conceição Lima on 17/05/23.
//

import Foundation

protocol <#ViewModel#>CoordinadorDelegate {
    
}


class <##><#ViewModel#>ViewModel: ObservableObject {
    // Add necessary properties and methods
    
    var coordinatorDelegate: <#ViewModel#>CoordinadorDelegate!
    var service: WebTemplateService
    
    init(service: WebTemplateService) {
        self.service = service
    }

}

