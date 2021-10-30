//
//  TextFieldZipCodeDelegate.swift
//  TextFieldsDelegate
//
//  Created by skyme32 on 30/10/21.
//

import Foundation
import UIKit

class TextFieldZipCodeDelegate: NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        // Control of Number
        
        return newText.length <= 5
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    private func onlyNumber(newTextString: String) -> String {
        var newText = "";
        let digits = CharacterSet.alphanumerics
        var digitText = ""
        for c in (newTextString.unicodeScalars) {
            if digits.contains(UnicodeScalar(c.value)!) {
                digitText.append("\(c)")
            }
        }
        
        // Format the new string
        if Int(digitText) != nil {
            newText = digitText
        } else {
            newText = ""
        }
        
        return newText
    }
}
