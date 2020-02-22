//
//  MessageHandlingProtocols.swift
//  MyStomotology
//
//  Created by Sergey Mikhailov on 02.02.2020.
//  Copyright © 2020 Mikhailov. All rights reserved.
//

import Foundation

enum TypeMessage {
    case error
    case warning
    case message
    case notification
}

protocol MessageHandlingProtocol {
    func showMessage(title: String?, subtitle: String?, typeMessage: TypeMessage, completion: Completion?)
}

protocol MessageVisitorProtocol {
    func showTableMessage()
    func showAllertMessage()
    func showNotificationMessage()
    func showStatusBarMessage()
}
