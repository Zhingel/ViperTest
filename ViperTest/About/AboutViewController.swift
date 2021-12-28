//
//  ViewController.swift
//  ViperTest
//
//  Created by Стас Жингель on 28.12.2021.
//

import UIKit


protocol AboutViewProtocol: AnyObject {
    func setUrlButtonTitle(with title: String)
}

class AboutViewController: UIViewController {
    var presenter: AboutPresenterProtocol!
    let configurator: AboutConfiguratorProtocol = AboutConfigurator()

    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
        presenter.configureView()
    }


}

