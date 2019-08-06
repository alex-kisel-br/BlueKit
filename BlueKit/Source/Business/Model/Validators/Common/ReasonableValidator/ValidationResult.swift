//
//  ValidationResult.swift
//  BlueKit
//
//  Created by branderstudio on 7/3/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

public enum ValidationResult<RequirementType>: Equatable where RequirementType: Equatable {
    case valid
    case invalid(requirements: [RequirementType])
}

extension ValidationResult {
    
    var isValid: Bool {
        switch self {
        case .valid: return true
        case .invalid: return false
        }
    }
    
}
