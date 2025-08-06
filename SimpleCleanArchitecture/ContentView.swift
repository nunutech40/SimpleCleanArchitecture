//
//  ContentView.swift
//  SimpleCleanArchitecture
//
//  Created by Nunu Nugraha on 06/08/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        let dataSource = MessageDataSource()
        let repository = MessageRepository(dataSource: dataSource)
        let useCase = MessageInteractor(messageRepository: repository)
        let viewModel = HomeViewViewModel(messageUseCase: useCase)
        
        HomeView(viewModel: viewModel)
    }
}

#Preview {
    ContentView()
}
