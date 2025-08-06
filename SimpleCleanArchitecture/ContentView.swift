//
//  ContentView.swift
//  SimpleCleanArchitecture
//
//  Created by Nunu Nugraha on 06/08/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        let useCase = Injection.init().provideUseCase()
        let viewModel = HomeViewViewModel(messageUseCase: useCase)
        
        HomeView(viewModel: viewModel)
    }
}

#Preview {
    ContentView()
}
