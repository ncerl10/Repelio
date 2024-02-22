//
//  Credits.swift
//  Repelio
//
//  Created by Noah Lee on 12/9/20.
//  Copyright © 2020 Noah Lee. All rights reserved.
//

import UIKit

class Credits: UIViewController {

    @IBOutlet weak var roundImage: UIImageView!
    @IBOutlet weak var underLine: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        roundImage.layer.cornerRadius = 50.0
        underLine.layer.cornerRadius = 5.0
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
