//
//  EmailValidator.swift
//  BlueKit
//
//  Created by branderstudio on 7/3/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

public typealias EmailValidationResult = ValidationResult<EmailRequirement>

open class EmailValidator: ReasonableValidator {
  
  private let emailRegex: Regex
  
  public init(regex: String = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}") {
    self.emailRegex = Regex(string: regex)
  }
  
  open func validate(value: String?) -> EmailValidationResult {
    let value = value ?? ""
    if value.isEmpty {
      return .invalid(requirements: [.empty])
    } else if !emailRegex.evaluate(value: value) {
      return .invalid(requirements: [.wrongFormat])
    } else {
      return .valid
    }
  }
}
