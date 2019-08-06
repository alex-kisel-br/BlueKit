//
//  Regex.swift
//  BlueKit
//
//  Created by branderstudio on 7/3/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

open class Regex {
    
    // MARK: - Private variables
    
    public let regexString: String

    // MARK: - Life cycle
    
    public init(string: String) {
        regexString = string
    }
    
    // MARK: - Public
    
    open func evaluate(value: Any?) -> Bool {
        let predicate = NSPredicate(format: "SELF MATCHES %@", regexString)
        return predicate.evaluate(with: value)
    }
}
