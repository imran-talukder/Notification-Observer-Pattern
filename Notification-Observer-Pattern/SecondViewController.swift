//
//  SecondViewController.swift
//  Notification-Observer-Pattern
//
//  Created by Appnap WS01 on 16/9/20.
//  Copyright © 2020 Appnap WS01. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    let one = Notification.Name(rawValue: first)
    let two = Notification.Name(rawValue: second)
    
    let ageArray: [Int:Int] = [0: 4, 1: 10, 2: 100, 3: 44, 4: 500]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func donePressed(_ sender: UIButton) {
        NotificationCenter.default.post(name: one, object: nil, userInfo: ageArray)
        dismiss(animated: true, completion: nil)
    }
}
