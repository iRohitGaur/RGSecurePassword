//
//  ViewController.swift
//  RGSecurePassword
//
//  Created by iRohitGaur on 05/13/2020.
//  Copyright (c) 2020 iRohitGaur. All rights reserved.
//

import UIKit
import RGSecurePassword

class ViewController: UIViewController {

    @IBOutlet weak var messageBoard: UITextView!
    @IBOutlet weak var passLengthPicker: UIPickerView!
    @IBOutlet weak var symbols: UISwitch!
    @IBOutlet weak var numbers: UISwitch!
    @IBOutlet weak var generatedPassword: UILabel!
    
    var intArray = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Array for Password length
        intArray = Array(6...40)
        
        messageBoard.text = "Initializing..."
        setMessage(message: "Default Pool is set to Alphabets, Symbols & Numbers")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        passLengthPicker.selectRow(6, inComponent: 0, animated: true)
    }
    
    @IBAction func switchSymbolsNumbers(_ sender: Any) {
        switch poolStatus() {
        case .default:
            setMessage(message: "Switched to Pool with Alphabets, Symbols & Numbers")
        case .RGA:
            setMessage(message: "Switched to Pool with Alphabets")
        case .RGAN:
            setMessage(message: "Switched to Pool with Alphabets & Numbers")
        case .RGAS:
            setMessage(message: "Switched to Pool with Alphabets & Symbols")
        }
    }
    
    @IBAction func copyPassword(_ sender: Any) {
        let pasteboard = UIPasteboard.general
        pasteboard.string = generatedPassword.text
    }
    
    @IBAction func generatePassword(_ sender: Any) {
        setMessage(message: "Password Generated. Copy for further use.")
        let length = intArray[passLengthPicker.selectedRow(inComponent: 0)]
        generatedPassword.text = RGSecurePassword.get(pool: poolStatus(), length: length)
    }
    
    func setMessage(message: String) {
        messageBoard.text = "\(messageBoard.text!)\n\nMessage: \n\(message)"
        scrollTextViewToBottom(textView: messageBoard)
    }
    
    func poolStatus() -> RGSecurePassword.RGSPool {
        if(symbols.isOn && numbers.isOn) {
            return .default
        } else if(symbols.isOn && !numbers.isOn) {
            return .RGAS
        } else if(!symbols.isOn && numbers.isOn) {
            return .RGAN
        } else {
            return .RGA
        }
    }
    
    func scrollTextViewToBottom(textView: UITextView) {
        if textView.text.count > 0 {
            let location = textView.text.count - 1
            let bottom = NSMakeRange(location, 1)
            textView.scrollRangeToVisible(bottom)
        }
    }
}

// MARK: Picker View Methods

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return intArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(intArray[row])
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        setMessage(message: "Password length set to: \(intArray[row])")
    }
}


// MARK: IBDesignable Methods

@IBDesignable extension UIView {
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get {
            if let color = layer.borderColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.borderColor = color.cgColor
            } else {
                layer.borderColor = nil
            }
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable
    var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        }
        set {
            layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable
    var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor? {
        get {
            if let color = layer.shadowColor {
                return UIColor(cgColor: color)
            }
            return nil
        }
        set {
            if let color = newValue {
                layer.shadowColor = color.cgColor
            } else {
                layer.shadowColor = nil
            }
        }
    }
}
