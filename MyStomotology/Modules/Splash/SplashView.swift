//
//  SplashView.swift
//  MyStomotology
//
//  Created by Sergey Mikhailov on 22.10.2019.
//  Copyright © 2019 Mikhailov. All rights reserved.
//
import UIKit
import AsyncDisplayKit

protocol SplashViewProtocol: class {
    
}

class SplashView: ASViewController<ASDisplayNode> {
    
    private let assembler: SplashAssemblerProtocol = SplashAssembler()
    var presenter: SplashPresenterProtocol?
    
    //let textNode = ASTextNode()
    
    init() {
        super.init(node: SplashPictureNode())

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //assembler.assemble(with: self)
        //presenter.viewDidLoad()
        view.backgroundColor = .white
    }
        
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
}

class SplashPictureNode: ASDisplayNode {
    
    var presenter: SplashPresenterProtocol?
    
    override required init() {
        super.init()
        automaticallyManagesSubnodes = true
        backgroundColor = .white
        presenter = SplashPresenter()
    }
}

extension SplashPictureNode {
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        
        let textNode = ASTextNode()
        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        let attrs = [NSAttributedString.Key.font: UIFont(name: "Arial", size: 16.0)!, NSAttributedString.Key.paragraphStyle: paragraph ]
        let string = NSAttributedString(string: "Splash Screen", attributes: attrs)
        textNode.attributedText = string
        textNode.textContainerInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        
        return ASCenterLayoutSpec(centeringOptions: ASCenterLayoutSpecCenteringOptions.XY, sizingOptions: ASCenterLayoutSpecSizingOptions.minimumXY, child: textNode)
    }
}

extension SplashView: SplashViewProtocol {
    
}
