//
//  Category+TextFieldDelegate.swift
//  Have A Nice Day
//
//  Created by Denis Sushkov on 29.07.2020.
//  Copyright © 2020 d_sushkov. All rights reserved.
//

import UIKit

extension CategoryViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        // Checks textField before adding to TableView
        if let item = textField.text {
            if item != "" {
                categoryAdded(with: item)
                textField.placeholder = "Something else?"
                textField.text = ""
            } else {
                textField.placeholder = "Nothing to add..."
            }
        }
    }
}
