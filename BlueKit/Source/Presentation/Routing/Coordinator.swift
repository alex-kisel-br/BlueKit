//
//  Coordinator.swift
//  BlueKit
//
//  Created by branderstudio on 7/2/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import UIKit

open class Coordinator {
    
    // MARK: - Public variables
    
    open weak var navigationController: (UINavigationController)!
    
    // MARK: - Life cycle
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: - Start
    
    open func start(animated: Bool) {
    }
    
}
