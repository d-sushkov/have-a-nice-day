//
//  Setup+TextFieldDelegate.swift
//  Have A Nice Day
//
//  Created by Denis Sushkov on 29.07.2020.
//  Copyright © 2020 d_sushkov. All rights reserved.
//

import UIKit

extension SetupViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameTextField.endEditing(true)
        return true
    }
}
