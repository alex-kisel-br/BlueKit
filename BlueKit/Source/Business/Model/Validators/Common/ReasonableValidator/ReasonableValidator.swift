//
//  ReasonableValidator.swift
//  BlueKit
//
//  Created by branderstudio on 7/3/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

public protocol ReasonableValidator: Validator {
    associatedtype RequirementType where RequirementType: Equatable
    associatedtype ValidatableType where ValidatableType: Validatable
    
    func validate(value: ValidatableType) -> ValidationResult<RequirementType>
}

extension ReasonableValidator {
    
    public func isValid(value: Validatable) -> Bool {
        guard let validatableValue = value as? ValidatableType else { return false }
        let validationResult = validate(value: validatableValue)
        switch validationResult {
        case .valid: return true
        case .invalid: return false
        }
    }
}
