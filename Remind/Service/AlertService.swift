//
//  AlertService.swift
//  Remind
//
//  Created by Stephen on 24/04/2019.
//  Copyright © 2019 Stephen. All rights reserved.
//

import UIKit

class AlertService {
    private init() {}
    
    static func actionSheet(in vc: UIViewController, title: String, completion: @escaping () -> Void) {
        let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let action = UIAlertAction(title: title, style: .default) { (_) in
            completion()
        }
        alert.addAction(action)
        vc.present(alert, animated: true)
    }
}
