//
//  MessageRepository.swift
//  SimpleCleanArchitecture
//
//  Created by Nunu Nugraha on 06/08/25.
//

import Foundation

class MessageRepository: MessageRepositoryProtocol {
  
    private let messageDataSource: MessageDataSourceProtocol
    
    init(dataSource: MessageDataSourceProtocol) {
        self.messageDataSource = dataSource
    }
    
    func getWellComeMessage(name: String) -> MessageEntity {
        messageDataSource.getMessage(name: name)
    }
}
