//
//  DI.swift
//  SimpleCleanArchitecture
//
//  Created by Nunu Nugraha on 06/08/25.
//

import Foundation

final class Injection {
    
    private func provideDataSource() -> MessageDataSourceProtocol {
        return MessageDataSource()
    }
    
    private func provideRepository() -> MessageRepositoryProtocol {
        let messageDataSource = provideDataSource()
        return MessageRepository(dataSource: messageDataSource)
    }
    
    func provideUseCase() -> MessageUseCase {
        let provideRepository = provideRepository()
        return MessageInteractor(messageRepository: provideRepository)
    }
    
}
