//
//  SplashRouter.swift
//  MyStomotology
//
//  Created by Sergey Mikhailov on 23.10.2019.
//  Copyright © 2019 Mikhailov. All rights reserved.
//

import Foundation

protocol SplashRouterProtocol: class {
    func showLoginMain()
}

class SplashRouter: BaseRouter {
    
}

extension SplashRouter: SplashRouterProtocol {
    
    func showLoginMain() {
//        guard let controller = UIStoryboard(name: "LoginMain", bundle: nil)
//            .instantiateViewController(withIdentifier:  LoginMainView.storyboardIdentifier) as? LoginMainView else {
//                return
//        }
//        let assembler: LoginMainAssemblerProtocol = LoginMainAssembler()
//        assembler.assemble(with: controller)
//        self.show(controller)
    }
    
}
