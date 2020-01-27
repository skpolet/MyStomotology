//
//  SplashPresenter.swift
//  MyStomotology
//
//  Created by Sergey Mikhailov on 19.01.2020.
//  Copyright © 2020 Mikhailov. All rights reserved.
//

import Foundation
import AsyncDisplayKit

protocol SplashPresenterProtocol {
    func configureText() -> ASTextNode!
}

class SplashPresenter: SplashPresenterProtocol {
    
    init() {
        
    }
    
    func configureText() -> ASTextNode! {
        let textNode = ASTextNode()
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        let attrs = [NSAttributedString.Key.font: UIFont(name: "Arial", size: 16.0)!, NSAttributedString.Key.paragraphStyle: paragraph ]
        let string = NSAttributedString(string: "Splash Screen", attributes: attrs)
        textNode.attributedText = string
        textNode.textContainerInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        return textNode
    }
    
}
