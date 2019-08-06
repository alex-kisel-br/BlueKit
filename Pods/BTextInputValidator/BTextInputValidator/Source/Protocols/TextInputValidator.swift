//
//  TextInputValidator.swift
//  BTextInputValidator
//
//  Created by branderstudio on 21.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

public protocol TextInputValidator {
  func validateInputText(_ inputText: String?) -> Bool
}
