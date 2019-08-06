//
//  NavigationButtoned.swift
//  BlueKit
//
//  Created by branderstudio on 7/16/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

public enum NavigationButtonSide {
  case left
  case right
}

public protocol NavigationButtoned {
  func addNavigationButton(_ action: Selector, button: UIButton, side: NavigationButtonSide)
  func disableNavigationButton(side: NavigationButtonSide)
  func enableNavigationButton(side: NavigationButtonSide)
}

public extension NavigationButtoned where Self: UIViewController {
  
  func addNavigationButton(
    _ action: Selector, button: UIButton, side: NavigationButtonSide = .left) {
    button.addTarget(self, action: action, for: .touchUpInside)
    let barButtonItem = UIBarButtonItem(customView: button)
    addButtonItem(barButtonItem, to: side)
  }
  
  func disableNavigationButton(side: NavigationButtonSide) {
    
    switch side {
    case .left:
      navigationItem.leftBarButtonItem?.isEnabled = false
    case .right:
      navigationItem.rightBarButtonItem?.isEnabled = false
    }
    
  }
  
  func enableNavigationButton(side: NavigationButtonSide) {
    
    switch side {
    case .left:
      navigationItem.leftBarButtonItem?.isEnabled = true
    case .right:
      navigationItem.rightBarButtonItem?.isEnabled = true
    }
    
  }
  
  private func addButtonItem(_ button: UIBarButtonItem, to side: NavigationButtonSide) {
    switch side {
    case .left: navigationItem.leftBarButtonItem = button
    case .right: navigationItem.rightBarButtonItem = button
    }
  }
}
