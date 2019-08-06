//
//  SystemAlertViewModel.swift
//  FootballUA
//
//  Created by branderstudio on 7/12/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import UIKit

public struct SystemAlertViewModel {
  let title: String?
  let message: String?
  let actions: [UIAlertAction]
  
  public init(title: String?, message: String?, actions: [UIAlertAction]) {
    self.title = title
    self.message = message
    self.actions = actions
  }
}
