//
//  SwipableNavigationController.swift
//  BlueKit
//
//  Created by branderstudio on 7/10/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import UIKit

open class SwipableNavigationController: UINavigationController {
    
    // MARK: - Life cycle
    
    public override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public override init(navigationBarClass: AnyClass?, toolbarClass: AnyClass?) {
        super.init(navigationBarClass: navigationBarClass, toolbarClass: toolbarClass)
    }
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    // MARK: - View life cycle
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    // MAKR: - Setup
    
    private func configure() {
        interactivePopGestureRecognizer?.delegate = self
    }
}

// MARK: - UIGestureRecognizerDelegate

extension SwipableNavigationController: UIGestureRecognizerDelegate {
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
