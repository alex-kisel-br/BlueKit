//
//  String+Extension.swift
//  BlueKit
//
//  Created by branderstudio on 7/3/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

public extension Optional where Wrapped == String {
    
    var isNilOrEmpty: Bool {
        switch self {
        case .none: return true
        case .some(let value): return value.isEmpty
        }
    }
}
