//
//  UICollectionView+Extension.swift
//  FootballUA
//
//  Created by branderstudio on 7/12/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import UIKit

public extension UICollectionView {
  
  func dequeueReusableCell<T: UICollectionViewCell>(
    withReuseIdentifier reuseIdentifier: String,
    for indexPath: IndexPath) -> T {
    guard let cell = dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? T else {
      fatalError("Could not dequeue cell with identifier: \(reuseIdentifier)")
    }
    return cell
  }
}
