//
//  BaseRouter.swift
//  MyStomotology
//
//  Created by Sergey Mikhailov on 23.10.2019.
//  Copyright © 2019 Mikhailov. All rights reserved.
//

//import UIKit
import AsyncDisplayKit

class BaseRouter: NSObject {
    
    private weak var controller: ASViewController<ASDisplayNode>!
    
    required init(controller: ASViewController<ASDisplayNode>) {
        self.controller = controller
    }
    
    func show(_ controller: ASViewController<ASDisplayNode>) {
        controller.navigationItem.title = ""
        self.controller.show(controller, sender: nil)
        removeBackWord()
    }
    
    func present(_ controller: ASViewController<ASDisplayNode>) {
        controller.navigationItem.title = ""
        self.controller.present(controller, animated: true)
    }
    
    func setAsRoot(_ controller: ASViewController<ASDisplayNode>) {
        controller.navigationItem.title = ""
        UIApplication.shared.keyWindow?.rootViewController = controller
    }
    
    private func removeBackWord() {
        let backButton = UIBarButtonItem()
        backButton.title = ""
        controller.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        
    }
    
}
