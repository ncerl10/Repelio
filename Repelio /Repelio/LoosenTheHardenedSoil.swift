//
//  LoosenTheHardenedSoil.swift
//  Repelio
//
//  Created by Noah Lee on 25/8/20.
//  Copyright © 2020 Noah Lee. All rights reserved.
//

import UIKit

class LoosenTheHardenedSoil: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{

    @IBOutlet weak var roundImage: UIImageView!
    @IBOutlet weak var underLine: UIImageView!
    @IBOutlet weak var alarmTime4: UIPickerView!
    @IBOutlet weak var daily: UIButton!
    @IBOutlet weak var confirm: UIButton!
    let data = alarmTime()
    let def = UserDefaults.standard
    var hours:Int?
    var minutes:Int?
    var timings:Int?
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        if component == 0
        {
            return data.hours[row]
        }
        
        else if component == 1
        {
            return data.minutes[row]
        }
        return data.timing[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0
        {
            return data.hours.count
        }
        
        else if component == 1
        {
            return data.minutes.count
        }
        return data.timing.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        roundImage.layer.cornerRadius = 50.0
        underLine.layer.cornerRadius = 5.0
        confirm.layer.cornerRadius = 20.0
        confirm.layer.borderWidth = 4
        confirm.layer.borderColor = UIColor.black.cgColor
        alarmTime4.delegate = self
        alarmTime4.dataSource = self
        daily.isSelected = def.bool(forKey: "dailybtn4")
        let hour = def.integer(forKey: "hour4")
        let minute = def.integer(forKey: "minute4")
        let timing = def.integer(forKey: "timing4")
        alarmTime4.selectRow(hour, inComponent: 0, animated: false)
        alarmTime4.selectRow(minute, inComponent: 1, animated: false)
        alarmTime4.selectRow(timing, inComponent: 2, animated: false)
    }
    @IBAction func btn4(_ sender: UIButton)
    {
        var temp = def.bool(forKey: "dailybtn4")
        temp.toggle()
        if temp
        {
            sender.isSelected = true
        }
        else
        {
            sender.isSelected = false
        }
        def.set(temp, forKey: "dailybtn4")
        
    }
    @IBAction func confirm(_ sender: Any)
    {
        def.set(alarmTime4.selectedRow(inComponent: 0), forKey: "hour4")
        def.set(alarmTime4.selectedRow(inComponent: 1), forKey: "minute4")
        def.set(alarmTime4.selectedRow(inComponent: 2), forKey: "timing4")
        self.navigationController?.viewControllers.remove(at: (navigationController?.viewControllers.count)!-1)
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
