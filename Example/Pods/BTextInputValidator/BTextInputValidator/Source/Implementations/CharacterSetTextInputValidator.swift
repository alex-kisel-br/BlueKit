//
//  CharacterSetTextInputValidator.swift
//  BTextInputValidator
//
//  Created by branderstudio on 21.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

open class CharacterSetTextInputValidator: TextInputValidator {
  
  open var characterSet: CharacterSet = CharacterSet()
  
  open func validateInputText(_ inputText: String?) -> Bool {
    guard let inputText = inputText, !inputText.isEmpty else { return true }
    for characterIndex in 0..<inputText.count {
      guard let character = inputText.characterAt(characterIndex) else { continue }
      guard let scalar = String(character).unicodeScalars.first else { continue }
      guard characterSet.contains(scalar) else { return false }
    }
    return true
  }
}
