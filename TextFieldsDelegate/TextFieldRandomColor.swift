//
//  TextFieldRandomColor.swift
//  TextFieldsDelegate
//
//  Created by skyme32 on 30/10/21.
//

import UIKit

class TextFieldRandomColor: NSObject, UITextFieldDelegate {
    
    let colors = [UIColor.red,
                  UIColor.orange, UIColor.yellow,
                  UIColor.green, UIColor.blue,
                  UIColor.purple, UIColor.brown];
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = self.randomColor()
        return true
    }
    
    func randomColor() -> UIColor {
        let randomIndex = Int(arc4random() % UInt32(colors.count))
        return colors[randomIndex]
    }
    
    
}
