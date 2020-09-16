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
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func donePressed(_ sender: UIButton) {
        NotificationCenter.default.post(name: two, object: nil)
        dismiss(animated: true, completion: nil)
    }
}
