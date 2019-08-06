//
//  SystemAlertDisplayable.swift
//  FootballUA
//
//  Created by branderstudio on 7/12/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import UIKit

public protocol SystemAlertDisplayable {
  func showAlert(viewModel: SystemAlertViewModel)
  func showErrorAlert(title: String, message: String)
  func showErrorAlert(message: String)
}

public extension SystemAlertDisplayable where Self: UIViewController {
  func showAlert(viewModel: SystemAlertViewModel) {
    let alert = SystemAlertFactory.createSystemAlert(viewModel: viewModel)
    present(alert, animated: true, completion: nil)
  }
  
  func showErrorAlert(title: String, message: String) {
    let viewModel = SystemAlertFactory.createOkSystemAlertViewModel(title: title, message: message)
    showAlert(viewModel: viewModel)
  }
  
  func showErrorAlert(message: String) {
    let viewModel = SystemAlertFactory.createOkSystemAlertViewModel(message: message)
    showAlert(viewModel: viewModel)
  }
}
