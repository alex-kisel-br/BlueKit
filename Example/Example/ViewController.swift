//
//  ViewController.swift
//  Example
//
//  Created by branderstudio on 7/2/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import UIKit
import BlueKit
import AUIKit
import BTextInputFilter
import AnyFormatKit

class ViewController: UIViewController {
    
    let textField = UITextField(frame: CGRect(x: 0, y: 80, width: 300, height: 50))
    
    let textFieldController = AUIDefaultTextInputControlTextFieldController()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(textField)
        textField.backgroundColor = .gray
        let textInputControl = FilterValidatorFormatterTextInputControl()
        textInputControl.inputTextFormatter = DefaultTextInputFormatter(textPattern: "### ###")
        textInputControl.inputTextFilter = RegexTextInputFilter(allowedSymbolsRegex: "[0-9]")
        textFieldController.textInputControl = textInputControl
        textFieldController.textField = textField
    }


}

