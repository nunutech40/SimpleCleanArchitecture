//
//  HomeView.swift
//  SimpleCleanArchitecture
//
//  Created by Nunu Nugraha on 06/08/25.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject private var viewModel: HomeViewViewModel
    
    init(viewModel: HomeViewViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        TextField("Your Name", text: $viewModel.name)
            .textFieldStyle(.roundedBorder)
            .padding()
        Button("Submit", action: {
            viewModel.doGreeting()
        })
        Text(viewModel.submitedString)
    }
}
