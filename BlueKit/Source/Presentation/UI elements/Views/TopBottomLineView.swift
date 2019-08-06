//
//  TopBottomLineView.swift
//  BlueKit
//
//  Created by branderstudio on 7/12/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import UIKit

open class TopBottomLineView: ScreenView {
  
  // MARK: - UI elements
  
  public let topLineView = UIView()
  public let bottomLineView = UIView()
  
  // MARK: - Public variables
  
  open var linesColor: UIColor = UIConstanst.lineColor {
    didSet {
      topLineView.backgroundColor = linesColor
      bottomLineView.backgroundColor = linesColor
    }
  }
  
  // MARK: - Init configure
  
  open override func setup() {
    super.setup()
    configureSelf()
    configureTopLineView()
    configureBottomLineView()
  }
  
  private func configureSelf() {
    backgroundColor = .clear
  }
  
  private func configureTopLineView() {
    addSubview(topLineView)
    topLineView.snp.makeConstraints { make in
      make.leading.trailing.top.equalToSuperview()
      make.height.equalTo(UIConstanst.lineHeight)
    }
    topLineView.backgroundColor = UIConstanst.lineColor
  }
  
  private func configureBottomLineView() {
    addSubview(bottomLineView)
    bottomLineView.snp.makeConstraints { make in
      make.leading.trailing.bottom.equalToSuperview()
      make.height.equalTo(UIConstanst.lineHeight)
    }
    bottomLineView.backgroundColor = UIConstanst.lineColor
  }
  
  // MARK: - Public
  
  open func setNeedShowTopLine(_ needShow: Bool) {
    if needShow {
      topLineView.alpha = 1
    } else {
      topLineView.alpha = 0
    }
  }
  
  open func setNeedShowBottomLine(_ needShow: Bool) {
    if needShow {
      bottomLineView.alpha = 1
    } else {
      bottomLineView.alpha = 0
    }
  }
  
  // MARK: - UI constants
  
  private struct UIConstanst {
    static let lineHeight: CGFloat = 1
    static let lineColor: UIColor = .lightGray
  }
}

