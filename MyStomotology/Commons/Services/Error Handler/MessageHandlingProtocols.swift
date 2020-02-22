//
//  ErrorHandlingProtocols.swift
//  MyStomotology
//
//  Created by Sergey Mikhailov on 02.02.2020.
//  Copyright © 2020 Mikhailov. All rights reserved.
//

import Foundation

enum TypeMessage {
    case error
    case warning
}

protocol MessageObject {
    func showMessage()
}

protocol MessageVisitor {
    func showTableMessage()
    func showAllertMessage()
    func showNotificationMessage()
    func showStatusBarMessage()
}
