//
//  ViewModel.swift
//  SimpleCleanArchitecture
//
//  Created by Nunu Nugraha on 06/08/25.
//

import Foundation
import Combine

class HomeViewViewModel: ObservableObject {
    
    private let messageUseCase: MessageUseCase
    
    @Published var name: String = ""
    @Published var submitedString: String = ""
    
    init(messageUseCase: MessageUseCase) {
        self.messageUseCase = messageUseCase
    }
    
    func doGreeting() {
        let result = messageUseCase.getMessage(name: name)
        submitedString = result.wellcomeMessage
    }
}
