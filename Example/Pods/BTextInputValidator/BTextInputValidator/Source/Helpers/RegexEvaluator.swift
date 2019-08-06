//
//  RegexEvaluator.swift
//  BTextInputValidator
//
//  Created by branderstudio on 21.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

class RegexEvaluator {
  
  // MARK: - Private variables
  let regexString: String
  
  // MARK: - Life cycle
  init(string: String) {
    regexString = string
  }
  
  // MARK: - Public
  func evaluate(value: Any?) -> Bool {
    let predicate = NSPredicate(format: "SELF MATCHES %@", regexString)
    return predicate.evaluate(with: value)
  }
}
