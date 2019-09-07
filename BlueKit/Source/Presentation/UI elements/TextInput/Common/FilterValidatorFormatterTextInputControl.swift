//
//  FilterValidatorFormatterTextInputControl.swift
//  BlueKit
//
//  Created by branderstudio on 7/2/19.
//  Copyright © 2019 branderstudio. All rights reserved.
//

import AUIKit
import BTextInputFilter
import BTextInputValidator
import AnyFormatKit

open class FilterValidatorFormatterTextInputControl: AUITextInputControl {
    
    open var inputTextFilter: TextInputFilter?
    open var inputTextValidator: TextInputValidator?
    open var inputTextFormatter: TextInputFormatter?
    
    public init() {
    }
    
    public func clearText(_ text: String?) -> String? {
        return inputTextFormatter?.unformat(text) ?? text
    }
    
    open func processTextInput(currentDisplayedText: String?, range: NSRange, replacementText text: String?) -> AUITextInputControlProcessedResult {
        var filteredString = text ?? ""
        if let inputTextFilter = inputTextFilter {
            filteredString = inputTextFilter.filter(text: text) ?? ""
        }
        guard let inputTextFormatter = inputTextFormatter else {
            guard let textRange = Range(range, in: currentDisplayedText ?? "") else { return (displayedText: currentDisplayedText, caretPosition: currentDisplayedText?.count ?? 0) }
            let newText = (currentDisplayedText ?? "").replacingCharacters(in: textRange, with: filteredString)
            guard inputTextValidator?.validateInputText(newText) == false else {
                return (displayedText: newText, caretPosition: range.location + filteredString.count)
            }
            return (displayedText: currentDisplayedText, caretPosition: range.location)
        }
        
        let formattingResult = inputTextFormatter.formatInput(currentText: currentDisplayedText ?? "", range: range, replacementString: filteredString)
        let newUnformattedText = inputTextFormatter.unformat(formattingResult.formattedText)
        if let inputTextValidator = inputTextValidator,
           inputTextValidator.validateInputText(newUnformattedText) == true {
            var currentCaretPosition = 0
            if text.isNilOrEmpty {
                currentCaretPosition = range.location + range.length
            } else {
                currentCaretPosition = range.location + (filteredString).count
            }
            return (displayedText: currentDisplayedText, caretPosition: currentCaretPosition)
        }
        return (displayedText: formattingResult.formattedText, caretPosition: formattingResult.caretBeginOffset)
    }
}
