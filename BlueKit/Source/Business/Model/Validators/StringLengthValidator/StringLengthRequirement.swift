//
//  StringLengthRequirement.swift
//  BlueKit
//
//  Created by branderstudio on 7/3/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

public enum StringLengthRequirement: Equatable {
    case tooShort(minLength: Int)
    case tooLong(maxLength: Int)
}
