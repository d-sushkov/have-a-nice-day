//
//  FinalViewController.swift
//  Have A Nice Day
//
//  Created by user167573 on 5/9/20.
//  Copyright © 2020 d_sushkov. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {
    
    @IBOutlet weak var topTextLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topTextLabel.text = "Have a Nice Day, \(userName ?? "User")!"
    }
    
    func createAdviceLabel(condition: String, weatherKey: String) -> String {
        let advice = finalScreenAdvice[weatherKey]?.randomElement()
        let label = "I see \(condition) outside. \(advice ?? "")"
        return label
    }
}
