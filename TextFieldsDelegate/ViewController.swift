//
//  ViewController.swift
//  TextFieldsDelegate
//
//  Created by skyme32 on 30/10/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Delegates
    let zipCodeDelegate = TextFieldZipCodeDelegate()
    let priceDelegate = TextFieldPriceDelegate()
    let colorDelegate = TextFieldRandomColor()
    
    // MARK: Outlets
    @IBOutlet weak var textFieldZipCode: UITextField!
    @IBOutlet weak var textFieldPrice: UITextField!
    @IBOutlet weak var textFieldColor: UITextField!
    @IBOutlet weak var toggleButton: UISwitch!
    
    // MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.textFieldZipCode.delegate = self.zipCodeDelegate
        self.textFieldPrice.delegate = self.priceDelegate
        self.textFieldColor.delegate = self
        self.toggleButton.setOn(false, animated: false)
    }

    // MARK: Text Field Delegate
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return self.toggleButton.isOn
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    @IBAction func toggleTextEDitor(_ sender: AnyObject) {
        if !(sender as! UISwitch).isOn {
            self.textFieldColor.resignFirstResponder()
            self.textFieldColor.delegate = self
        } else {
            self.textFieldColor.delegate = self.colorDelegate
        }
    }
}

