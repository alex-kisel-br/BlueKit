//
//  HorizontalDividerViewDecorator.swift
//  BlueKit
//
//  Created by branderstudio on 7/12/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import UIKit
import SnapKit

open class HorizontalDividerViewDecorator: ViewDecorator {
  
  // MARK: - Public variables
  
  open var linesColor: UIColor = .lightGray
  open var needShowTopDivider: Bool = true
  open var needShowBottomDivider: Bool = false
  open var leftOffset: CGFloat = 0
  open var rightOffset: CGFloat = 0
  
  // MARK: - Life cycle
  
  public init() {
  }
  
  // MARK: - ViewDecorator
  
  open func addDecoration(to view: UIView) {
    let topBottomLineView = TopBottomLineView()
    topBottomLineView.linesColor = linesColor
    
    view.addSubview(topBottomLineView)
    topBottomLineView.snp.makeConstraints { make in
      make.leading.equalToSuperview().offset(leftOffset)
      make.trailing.equalToSuperview().inset(rightOffset)
      make.top.bottom.equalToSuperview()
    }
    
    topBottomLineView.topLineView.alpha = needShowTopDivider ? 1 : 0
    topBottomLineView.bottomLineView.alpha = needShowBottomDivider ? 1 : 0
    topBottomLineView.isUserInteractionEnabled = false
    
    view.subviews.forEach { subview in
      if subview != topBottomLineView {
        view.bringSubviewToFront(subview)
      }
    }
  }
  
}
