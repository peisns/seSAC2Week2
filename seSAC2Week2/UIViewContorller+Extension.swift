//
//  UIViewContorller+Extension.swift
//  seSAC2Week2
//
//  Created by Brother Model on 2022/07/30.
//

import Foundation
import UIKit

extension UIViewController {
    ///function to present a basic alert
    func presentBasicAlert(title: String = "알림", message: String, style: UIAlertController.Style = .alert, okButtonTitle: String = "OK") {
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        let ok = UIAlertAction(title: "확인", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }
}
