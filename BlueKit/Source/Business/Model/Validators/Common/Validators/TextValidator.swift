//
//  TextValidator.swift
//  BlueKit
//
//  Created by branderstudio on 7/3/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

public protocol TextValidator: Validator {
}

extension Optional: Validatable where Wrapped == String {
}
