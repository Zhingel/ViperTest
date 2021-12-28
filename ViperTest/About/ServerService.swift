//
//  ServerService.swift
//  ViperTest
//
//  Created by Стас Жингель on 28.12.2021.
//

import UIKit

protocol ServerServiceProtocol: AnyObject {
    var urlRatesSource: String { get }
    func openUrl(with urlString: String)
}

class ServerService: ServerServiceProtocol {
    
    var urlRatesSource: String {
        return "https://free.currencyconverterapi.com"
    }
    
    func openUrl(with urlString: String) {
        if let url = URL(string: urlString) {
            UIApplication.shared.open(url, options: [:])
        }
    }
}
