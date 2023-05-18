//
//  FirstView.swift
//  WebTemplate
//
//  Created by Paulo Danilo Conceição Lima on 17/05/23.
//

import SwiftUI

struct FirstView: View {
    var viewModel: FirstViewModel

    init(viewModel: FirstViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        Text("Hello, World!") // Replace this with your desired view hierarchy
    }
}
