//
//  HightlightedTextViewModel.swift
//  BlueKit
//
//  Created by branderstudio on 7/3/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import Foundation

public struct HightlightedTextViewModel: Hashable {
    public let text: String
    public let hightlightedText: String
    
    public init(text: String, hightlightedText: String) {
        self.text = text
        self.hightlightedText = hightlightedText
    }
}
