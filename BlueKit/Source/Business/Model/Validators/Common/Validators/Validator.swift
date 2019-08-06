//
//  Validator.swift
//  BlueKit
//
//  Created by branderstudio on 7/3/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

public protocol Validator {
    func isValid(value: Validatable) -> Bool
}
