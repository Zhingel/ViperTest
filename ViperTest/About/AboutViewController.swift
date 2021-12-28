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

class AboutViewController: UIViewController, AboutViewProtocol {
    var urlButton = UIButton(type: .system)
    func setUrlButtonTitle(with title: String) {
        urlButton.setTitle(title, for: .normal)
    }
    
    var presenter: AboutPresenterProtocol!
    let configurator: AboutConfiguratorProtocol = AboutConfigurator()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(urlButton)
        urlButton.translatesAutoresizingMaskIntoConstraints = false
        urlButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        urlButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        configurator.configure(with: self)
        presenter.configureView()
    }


}

