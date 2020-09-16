//
//  ViewController.swift
//  Notification-Observer-Pattern
//
//  Created by Appnap WS01 on 16/9/20.
//  Copyright © 2020 Appnap WS01. All rights reserved.
//

import UIKit
let first = "abcd"
let second = "appnap.io"

class ViewController: UIViewController {
    let one = NSNotification.Name(rawValue: first)
    let two = NSNotification.Name(rawValue: second)
    override func viewDidLoad() {
        super.viewDidLoad()
        createObserver()
    }
    func createObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(printVal(notification:)), name: one, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(printVal(notification:)), name: two, object: nil)
    }
    
    
    @objc func printVal(notification: NSNotification) {
        if notification.name == one {
            print("One pressed")
        }
        if notification.name == two {
            print("Two Pressed")
        }
    }
    @IBAction func clickPressed(_ sender: UIButton) {
        let newVC = storyboard?.instantiateViewController(identifier: "secondView") as! SecondViewController
        newVC.modalPresentationStyle = .fullScreen 
        present(newVC, animated: true, completion: nil)
    }
}

