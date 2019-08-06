//
//  UIView+Extension.swift
//  BlueKit
//
//  Created by branderstudio on 7/3/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import UIKit

public extension UIView {
    
    func hide() {
        alpha = 0
    }
    
    func show(alpha: CGFloat = 1) {
        self.alpha = alpha
    }
}
