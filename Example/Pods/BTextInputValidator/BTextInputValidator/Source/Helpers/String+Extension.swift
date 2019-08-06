//
//  String+Extension.swift
//  BTextInputValidator
//
//  Created by branderstudio on 21.06.2019.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

extension String {
  
  func characterAt(_ index: Int) -> Character? {
    guard index < count else { return nil }
    return self[self.index(self.startIndex, offsetBy: index)]
  }
  
}
