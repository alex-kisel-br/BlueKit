//
//  StringLengthValidator.swift
//  BlueKit
//
//  Created by branderstudio on 7/3/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

public typealias StringLengthValidationResult = ValidationResult<StringLengthRequirement>

open class StringLengthValidator: ReasonableValidator {
    
    public let minLength: Int
    public let maxLength: Int
    
    public init(minLength: Int, maxLength: Int) {
        self.minLength = minLength
        self.maxLength = maxLength
    }
    
    open func validate(value: String?) -> StringLengthValidationResult {
        let value = value ?? ""
        if value.count < minLength {
            return .invalid(requirements: [.tooShort(minLength: minLength)])
        } else if value.count > maxLength {
            return .invalid(requirements: [.tooLong(maxLength: maxLength)])
        } else {
            return .valid
        }
    }
}
