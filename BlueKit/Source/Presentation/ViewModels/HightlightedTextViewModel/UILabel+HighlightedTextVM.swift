//
//  UILabel+HighlightedTextVM.swift
//  BlueKit
//
//  Created by branderstudio on 7/3/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import UIKit

public extension UILabel {
    
    func configure(
            hightlightedTextViewModel: HightlightedTextViewModel,
            highlightedAttributes: [NSAttributedString.Key: Any]) {
        let text = hightlightedTextViewModel.text
        let attributedText = NSMutableAttributedString(string: text)
        let range = (text as NSString).range(of: hightlightedTextViewModel.hightlightedText)
        attributedText.addAttributes(highlightedAttributes, range: range)
        self.attributedText = attributedText
    }
}
