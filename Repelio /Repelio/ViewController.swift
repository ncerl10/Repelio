//
//  ViewController.swift
//  Repelio
//
//  Created by Noah Lee on 6/8/20.
//  Copyright © 2020 Noah Lee. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    let def = UserDefaults.standard
    
    @IBOutlet weak var roundImage: UIImageView!
    @IBOutlet weak var underline: UIImageView!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet var loadingScreen: UIView!
    
    let data = alarmTime()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        roundImage.layer.cornerRadius = 50.0
        underline.layer.cornerRadius = 5.0
        btn1.layer.cornerRadius = 20.0
        btn1.layer.borderWidth = 4
        btn1.layer.borderColor = UIColor.black.cgColor
        btn2.layer.cornerRadius = 20.0
        btn2.layer.borderWidth = 4
        btn2.layer.borderColor = UIColor.black.cgColor
        btn3.layer.cornerRadius = 20.0
        btn3.layer.borderWidth = 4
        btn3.layer.borderColor = UIColor.black.cgColor
        btn4.layer.cornerRadius = 20.0
        btn4.layer.borderWidth = 4
        btn4.layer.borderColor = UIColor.black.cgColor
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        loadingScreen.bounds.size.width = view.bounds.size.width
        loadingScreen.bounds.size.height = view.bounds.size.height
        loadingScreen.center = view.center
        view.addSubview(loadingScreen)
        UIView.animate(withDuration: 0.2, delay: 3, usingSpringWithDamping: 0.5, initialSpringVelocity: 0, options: [], animations: {
            self.loadingScreen.transform = CGAffineTransform(translationX: 0, y: 10)
        }) { (success) in
            self.loadingScreen.transform = CGAffineTransform(translationX: 0, y: -850)
        }
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in}
    }
}


