//
//  AboutConfigurator.swift
//  ViperTest
//
//  Created by Стас Жингель on 28.12.2021.
//

import Foundation
import UIKit

protocol AboutConfiguratorProtocol: AnyObject {
    func configure(with ViewController: AboutViewController)
}

class AboutConfigurator: AboutConfiguratorProtocol {
    
    func configure(with viewController: AboutViewController) {
        let presenter = AboutPresenter(view: viewController as AboutViewProtocol)
        let interactor = AboutInteractor(presenter: presenter)
        let router = AboutRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
