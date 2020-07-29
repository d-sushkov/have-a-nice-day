//
//  UIView+Animate.swift
//  Have A Nice Day
//
//  Created by Denis Sushkov on 29.07.2020.
//  Copyright © 2020 d_sushkov. All rights reserved.
//

import UIKit

extension ViewController {
    
    func animateButton() {
        startButton.alpha = 0
        startButton.isEnabled = false
        UIView.animate(withDuration: 1.7, delay: 1.0, options: .curveEaseIn, animations: {
            self.startButton.alpha = 1
        }, completion: { (finished) in
            self.startButton.isEnabled = true
        })
    }
}
