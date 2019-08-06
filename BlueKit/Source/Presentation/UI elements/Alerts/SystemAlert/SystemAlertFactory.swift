//
//  SystemAlertFactory.swift
//  FootballUA
//
//  Created by branderstudio on 7/12/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import UIKit

open class SystemAlertFactory {
  
  open class func createSystemAlert(viewModel: SystemAlertViewModel) -> UIAlertController {
    let alert = UIAlertController(title: viewModel.title, message: viewModel.message, preferredStyle: .alert)
    viewModel.actions.forEach { alert.addAction($0) }
    return alert
  }
  
  open class func createOkSystemAlertViewModel(title: String, message: String) -> SystemAlertViewModel {
    let okAlertAction = createOkAlertAction(block: {})
    return SystemAlertViewModel(title: title, message: message, actions: [okAlertAction])
  }
  
  open class func createOkSystemAlertViewModel(message: String) -> SystemAlertViewModel {
    let okAlertAction = createOkAlertAction(block: {})
    return SystemAlertViewModel.init(title: nil, message: message, actions: [okAlertAction])
  }
  
  private class func createOkAlertAction(block: @escaping () -> Void) -> UIAlertAction {
    return UIAlertAction(title: "OK",
                         style: .default,
                         handler: { _ in block() })
  }
}
