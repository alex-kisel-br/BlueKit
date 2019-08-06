//
//  MaxLengthTextInputValidator.swift
//  BTextInputValidator
//
//  Created by branderstudio on 21.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

open class MaxLengthTextInputValidator: TextInputValidator {
  
  open var maxLength: Int = 0
  
  open func validateInputText(_ inputText: String?) -> Bool {
    return (inputText?.count ?? 0) <= maxLength
  }
}
