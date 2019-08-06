//
//  NumberDiapasonValidator.swift
//  BlueKit
//
//  Created by branderstudio on 7/3/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

open class NumberDiapasonValidator<T> where T: Comparable {
    
    public let minValue: T
    public let maxValue: T
    
    public init(min: T, max: T) {
        minValue = min
        maxValue = max
    }
    
    open func validate(value: T) -> ValidationResult<NumberDiapasonRequirement<T>> {
        if value < minValue {
            return .invalid(requirements: [.tooSmall(minValue: minValue, maxValue: maxValue)])
        } else if value > maxValue {
            return .invalid(requirements: [.tooBig(minValue: minValue, maxValue: maxValue)])
        } else {
            return .valid
        }
    }
}
