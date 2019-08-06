//
//  NumberFormatter+Extension.swift
//  BlueKit
//
//  Created by branderstudio on 7/15/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

public extension NumberFormatter {
  
  func string(from value: Int) -> String? {
    return string(from: NSNumber(value: value))
  }
  
  func string(from value: Decimal) -> String? {
    return string(from: NSDecimalNumber(decimal: value))
  }
}
