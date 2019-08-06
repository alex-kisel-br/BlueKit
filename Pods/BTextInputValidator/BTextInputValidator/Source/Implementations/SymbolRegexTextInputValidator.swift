//
//  SymbolRegexTextInputValidator.swift
//  BTextInputValidator
//
//  Created by branderstudio on 21.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

open class SymbolRegexTextInputValidator: TextInputValidator {
  
  open var regex: String
  
  public init(regex: String = "") {
    self.regex = regex
  }
  
  open func validateInputText(_ inputText: String?) -> Bool {
    guard let inputText = inputText, !inputText.isEmpty else { return true }
    let regexEvaluator = RegexEvaluator(string: regex)
    for characterIndex in 0..<inputText.count {
      guard let character = inputText.characterAt(characterIndex) else { continue }
      guard regexEvaluator.evaluate(value: String(character)) else { return false }
    }
    return true
  }
}

