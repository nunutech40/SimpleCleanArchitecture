//
//  MessageDataSourceProtocol.swift
//  SimpleCleanArchitecture
//
//  Created by Nunu Nugraha on 06/08/25.
//

import Foundation

protocol MessageDataSourceProtocol {
    func getMessage(name: String) -> MessageEntity
}
