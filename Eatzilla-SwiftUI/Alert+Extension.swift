//
//  Alert+Extension.swift
//  Eatzilla-SwiftUI
//
//  Created by Sparkout on 03/03/23.
//

import Foundation
import UIKit

class Helper {
    class func alertMessage(title: String, message: String) {
        let alertVC = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { (action: UIAlertAction) in
        }
        alertVC.addAction(okAction)
        
        let viewController = UIApplication.shared.windows.first?.rootViewController!
        viewController?.present(alertVC, animated: true, completion: nil)
    }
}
