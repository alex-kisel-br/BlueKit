//
//  UIButton+Extension.swift
//  BlueKit
//
//  Created by branderstudio on 7/3/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import UIKit

public extension UIButton {
    
    func setTitle(_ title: String?) {
        setTitle(title, for: .normal)
    }
    
    func setTitleColor(_ color: UIColor) {
        setTitleColor(color, for: .normal)
    }
    
    func addTarget(_ target: Any?, action: Selector) {
        addTarget(target, action: action, for: .touchUpInside)
    }
    
    func setTitleFont(_ font: UIFont) {
        titleLabel?.font = font
    }
    
}
