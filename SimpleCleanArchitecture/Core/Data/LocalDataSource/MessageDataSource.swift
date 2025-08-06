//
//  MessageDataSource.swift
//  SimpleCleanArchitecture
//
//  Created by Nunu Nugraha on 06/08/25.
//

import Foundation

class MessageDataSource: MessageDataSourceProtocol {
    func getMessage(name: String) -> MessageEntity {
        return MessageEntity(wellcomeMessage: "Hello \(name), wellcome to testing clean architecture")
    }
    
}
