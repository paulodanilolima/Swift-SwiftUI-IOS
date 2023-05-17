//
//  HomeViewModel.swift
//  WebTemplate
//
//  Created by Paulo Danilo Conceição Lima on 16/05/23.
//

import Foundation

class HomeViewModel {
    
    public static var shared = HomeViewModel()
    
    init() {
        
    }
    
    func sayHi() {
        print("Essa é a viewModel")
    }
    
    func dontForget() {
        print("Esqueci a senha")
    }
    
    func singUP() {
        print("Vamos criar login e senha")
    }
    
}
