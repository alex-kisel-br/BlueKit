//
//  UIColor+Extension.swift
//  BlueKit
//
//  Created by branderstudio on 7/2/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import UIKit

public typealias ColorDiapason = UInt8

public extension UIColor {
    
    class func color(r: ColorDiapason,
                     g: ColorDiapason,
                     b: ColorDiapason,
                     a: CGFloat = 1) -> UIColor {
        let convertedRed = CGFloat(r) / CGFloat(ColorDiapason.max)
        let convertedGreen = CGFloat(g) / CGFloat(ColorDiapason.max)
        let convertedBlue = CGFloat(b) / CGFloat(ColorDiapason.max)
        let convertedAlpha = a
        let color = UIColor(red: convertedRed,
                            green: convertedGreen,
                            blue: convertedBlue,
                            alpha: convertedAlpha)
        return color
    }
}
