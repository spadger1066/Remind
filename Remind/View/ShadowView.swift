//
//  ShadowView.swift
//  Remind
//
//  Created by Stephen on 24/04/2019.
//  Copyright © 2019 Stephen. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        layer.shadowPath = CGPath(rect: layer.bounds, transform: nil)
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 1, height: 1)
        layer.shadowOpacity = 1
        layer.shadowRadius = 5
        
        layer.cornerRadius = 5
    }

}
