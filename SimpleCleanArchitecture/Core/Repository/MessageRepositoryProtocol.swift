//
//  MessageRepositoryProtocol.swift
//  SimpleCleanArchitecture
//
//  Created by Nunu Nugraha on 06/08/25.
//

import Foundation
protocol MessageRepositoryProtocol {
    func getWellComeMessage(name: String) -> MessageEntity
}
