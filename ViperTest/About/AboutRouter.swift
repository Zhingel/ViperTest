//
//  AboutRouter.swift
//  ViperTest
//
//  Created by Стас Жингель on 28.12.2021.
//

import Foundation
protocol AboutRouterProtocol: AnyObject {
    func closeCurrentViewController()
}
class AboutRouter: AboutRouterProtocol {
    
    weak var viewController: AboutViewController!
    
    init(viewController: AboutViewController) {
        self.viewController = viewController
    }
    
    func closeCurrentViewController() {
        viewController.dismiss(animated: true, completion: nil)
    }
}
