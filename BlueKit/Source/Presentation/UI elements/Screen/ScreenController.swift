//
//  ScreenController.swift
//  BlueKit
//
//  Created by branderstudio on 7/2/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import UIKit

open class ScreenController: UIViewController {
    
    // MARK: - Life cycles
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - View life cycle
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        initConfigure()
        hideNavigationBarIfNeeded()
    }
    
    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        hideNavigationBarIfNeeded()
        colorizeNavigationBarIfNeededAnimated()
    }
    
    open override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        disableSwipeToBackIfNeeded()
        setStatusBarStyle(statusBarStyle)
    }
    
    open override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
//        showNavigationBarIfNeeded()
        enableSwipeToBackIfNeeded()
    }
    
    // MARK: - Init configure
    
    open func initConfigure() {
        colorizeNavigationBarIfNeeded()
    }
    
    // MARK: - Navigation bar color
    
    open var navigationBarColor: UIColor {
        return .lightGray
    }
    
    private func colorizeNavigationBarIfNeededAnimated() {
        guard getNeedColorizeNavigationBar() else { return }
        transitionCoordinator?.animate(alongsideTransition: { [weak self] _  in
            self?.colorizeNavigationBar()
        })
    }
    
    private func colorizeNavigationBarIfNeeded() {
        guard getNeedColorizeNavigationBar() else { return }
        colorizeNavigationBar()
    }
    
    private func colorizeNavigationBar() {
        navigationController?.navigationBar.backgroundColor = navigationBarColor
    }
    
    private func getNeedColorizeNavigationBar() -> Bool {
        return navigationController != nil
    }
    
    // MARK: - Navigation bar appearence
    
    open var navigationBarHidden: Bool {
        return false
    }
  
//    private func showNavigationBarIfNeeded() {
//        if navigationBarHidden {
//            showNavigationBar()
//        }
//    }
  
    private func hideNavigationBarIfNeeded() {
        if navigationBarHidden {
            hideNavigationBar()
        }
    }
    
    // MARK: - Swipe to back
    
    open var swipeToBackEnabled: Bool {
        return true
    }
    
    private func disableSwipeToBackIfNeeded() {
        if !swipeToBackEnabled {
            navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        }
    }
    
    private func enableSwipeToBackIfNeeded() {
        if !swipeToBackEnabled {
            navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        }
    }
    
    // MARK: - Status bar style
    
    open var statusBarStyle: UIStatusBarStyle {
        return .default
    }
}
