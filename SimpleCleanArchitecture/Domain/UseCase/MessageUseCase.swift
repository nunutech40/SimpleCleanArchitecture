//
//  MessageUseCase.swift
//  SimpleCleanArchitecture
//
//  Created by Nunu Nugraha on 06/08/25.
//

import Foundation

protocol MessageUseCase {
    func getMessage(name: String) -> MessageEntity
}
