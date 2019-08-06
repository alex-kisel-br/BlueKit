//
//  NumberDiapasonRequirement.swift
//  BlueKit
//
//  Created by branderstudio on 7/3/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

public enum NumberDiapasonRequirement<T>: Equatable where T: Equatable {
    case tooSmall(minValue: T, maxValue: T)
    case tooBig(minValue: T, maxValue: T)
}
