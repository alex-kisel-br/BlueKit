//
//  ScreenView.swift
//  BlueKit
//
//  Created by branderstudio on 7/2/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import UIKit

open class ScreenView: UIView {
    
    // MARK: - Life cycle
    
    public init() {
        super.init(frame: .zero)
        initConfigure()
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        initConfigure()
    }
    
    @available(*, unavailable)
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initConfigure()
    }
    
    // MARK: - Init configure
    
    private func initConfigure() {
        setup()
        place()
    }
    
    // MARK: - Setup
    
    open func setup() {
        
    }
    
    open func place() {
        
    }
}
