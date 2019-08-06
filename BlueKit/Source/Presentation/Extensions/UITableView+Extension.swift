//
//  UITableView+Extension.swift
//  BlueKit
//
//  Created by branderstudio on 7/12/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import UIKit

public extension UITableView {
  
  func dequeueReusableCell<T: UITableViewCell>(
    withReuseIdentifier reuseIdentifier: String,
    for indexPath: IndexPath) -> T {
    guard let cell = dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? T else {
      fatalError("Could not dequeue cell with identifier: \(reuseIdentifier)")
    }
    return cell
  }
  
}
