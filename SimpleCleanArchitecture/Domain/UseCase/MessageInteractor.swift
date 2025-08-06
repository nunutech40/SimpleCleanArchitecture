//
//  MessageInteractor.swift
//  SimpleCleanArchitecture
//
//  Created by Nunu Nugraha on 06/08/25.
//

import Foundation

class MessageInteractor: MessageUseCase {
    
    private let messageRepository: MessageRepositoryProtocol
    
    init(messageRepository: MessageRepositoryProtocol) {
        self.messageRepository = messageRepository
    }
    
    func getMessage(name: String) -> MessageEntity {
        messageRepository.getWellComeMessage(name: name)
    }
}
