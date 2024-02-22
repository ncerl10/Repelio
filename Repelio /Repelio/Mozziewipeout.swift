//
//  Mozziewipeout.swift
//  Repelio
//
//  Created by Noah Lee on 12/8/20.
//  Copyright © 2020 Noah Lee. All rights reserved.
//

import UIKit

class Mozziewipeout: UIViewController {

    @IBOutlet weak var roundImage: UIImageView!
    @IBOutlet weak var Underline: UIImageView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var Turnthepail: UIButton!
    @IBOutlet weak var Tipthevase: UIButton!
    @IBOutlet weak var Fliptheflowerpotplate: UIButton!
    @IBOutlet weak var Loosenthehardenedsoil: UIButton!
    @IBOutlet weak var Clearroofgutters: UIButton!
    @IBOutlet weak var hours1: UILabel!
    @IBOutlet weak var minutes1: UILabel!
    @IBOutlet weak var timings1: UILabel!
    @IBOutlet weak var daily1: UILabel!
    @IBOutlet weak var hours2: UILabel!
    @IBOutlet weak var minutes2: UILabel!
    @IBOutlet weak var timings2: UILabel!
    @IBOutlet weak var daily2: UILabel!
    @IBOutlet weak var hours3: UILabel!
    @IBOutlet weak var minutes3: UILabel!
    @IBOutlet weak var timings3: UILabel!
    @IBOutlet weak var daily3: UILabel!
    @IBOutlet weak var hours4: UILabel!
    @IBOutlet weak var minutes4: UILabel!
    @IBOutlet weak var timings4: UILabel!
    @IBOutlet weak var daily4: UILabel!
    @IBOutlet weak var hours5: UILabel!
    @IBOutlet weak var minutes5: UILabel!
    @IBOutlet weak var timings5: UILabel!
    @IBOutlet weak var daily5: UILabel!
    
    
    let def = UserDefaults.standard
    
    let data = alarmTime()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        roundImage.layer.cornerRadius = 50.0
        Underline.layer.cornerRadius = 5.0
        Turnthepail.layer.cornerRadius = 10.0
        Turnthepail.layer.borderWidth = 2
        Turnthepail.layer.borderColor = UIColor.black.cgColor
        Tipthevase.layer.cornerRadius = 10.0
        Tipthevase.layer.borderWidth = 2
        Tipthevase.layer.borderColor = UIColor.black.cgColor
        Fliptheflowerpotplate.layer.cornerRadius = 10.0
        Fliptheflowerpotplate.layer.borderWidth = 2
        Fliptheflowerpotplate.layer.borderColor = UIColor.black.cgColor
        Loosenthehardenedsoil.layer.cornerRadius = 10.0
        Loosenthehardenedsoil.layer.borderWidth = 2
        Loosenthehardenedsoil.layer.borderColor = UIColor.black.cgColor
        Clearroofgutters.layer.cornerRadius = 10.0
        Clearroofgutters.layer.borderWidth = 2
        Clearroofgutters.layer.borderColor = UIColor.black.cgColor
        button1.isSelected = def.bool(forKey: "btn1")
        button2.isSelected = def.bool(forKey: "btn2")
        button3.isSelected = def.bool(forKey: "btn3")
        button4.isSelected = def.bool(forKey: "btn4")
        button5.isSelected = def.bool(forKey: "btn5")
    }
    
    @IBAction func btn1(_ sender: UIButton)
    {
        var temp1 = def.bool(forKey: "btn1")
        temp1.toggle()
        
        if temp1
        {
            sender.isSelected = true
            notifications()
        }
        else
        {
            sender.isSelected = false
            notifications()
        }
        def.set(temp1, forKey: "btn1")
    }
    
    @IBAction func btn2(_ sender: UIButton)
    {
        var temp2 = def.bool(forKey: "btn2")
        temp2.toggle()
        
        if temp2
        {
            sender.isSelected = true
            notifications()
        }
        else
        {
            sender.isSelected = false
            notifications()
        }
        def.set(temp2, forKey: "btn2")
    }
    
    @IBAction func btn3(_ sender: UIButton)
    {
        var temp3 = def.bool(forKey: "btn3")
        temp3.toggle()
        
        if temp3
        {
            sender.isSelected = true
            notifications()
        }
        else
        {
            sender.isSelected = false
            notifications()
        }
        def.set(temp3, forKey: "btn3")
    }
    
    @IBAction func btn4(_ sender: UIButton)
    {
        var temp4 = def.bool(forKey: "btn4")
        temp4.toggle()
        
        if temp4
        {
            sender.isSelected = true
            notifications()
        }
        else
        {
            sender.isSelected = false
            notifications()
        }
        def.set(temp4, forKey: "btn4")
    }
    
    @IBAction func btn5(_ sender: UIButton)
    {
        var temp5 = def.bool(forKey: "btn5")
        temp5.toggle()
        
        if temp5
        {
            sender.isSelected = true
            notifications()
        }
        else
        {
            sender.isSelected = false
            notifications()
        }
        def.set(temp5, forKey: "btn5")
    }
    override func viewDidAppear(_ animated: Bool) {
        let hour1 = def.integer(forKey: "hour1")
        let minute1 = def.integer(forKey: "minute1")
        let timing1 = def.integer(forKey: "timing1")
        hours1.text = "\(data.hours[hour1])"
        minutes1.text  = "\(data.minutes[minute1])"
        timings1.text = "\(data.timing[timing1])"
        let temp1 = def.bool(forKey: "dailybtn1")
        if temp1
        {
            daily1.text = "weekly"
        }
        else
        {
            daily1.text = "daily"
        }
        
        let hour2 = def.integer(forKey: "hour2")
        let minute2 = def.integer(forKey: "minute2")
        let timing2 = def.integer(forKey: "timing2")
        hours2.text = "\(data.hours[hour2])"
        minutes2.text  = "\(data.minutes[minute2])"
        timings2.text = "\(data.timing[timing2])"
        let temp2 = def.bool(forKey: "dailybtn2")
        if temp2
        {
            daily2.text = "weekly"
        }
        else
        {
            daily2.text = "daily"
        }
        
        let hour3 = def.integer(forKey: "hour3")
        let minute3 = def.integer(forKey: "minute3")
        let timing3 = def.integer(forKey: "timing3")
        hours3.text = "\(data.hours[hour3])"
        minutes3.text  = "\(data.minutes[minute3])"
        timings3.text = "\(data.timing[timing3])"
        let temp3 = def.bool(forKey: "dailybtn3")
        if temp3
        {
            daily3.text = "weekly"
        }
        else
        {
            daily3.text = "daily"
        }
        
        let hour4 = def.integer(forKey: "hour4")
        let minute4 = def.integer(forKey: "minute4")
        let timing4 = def.integer(forKey: "timing4")
        hours4.text = "\(data.hours[hour4])"
        minutes4.text  = "\(data.minutes[minute4])"
        timings4.text = "\(data.timing[timing4])"
        let temp4 = def.bool(forKey: "dailybtn4")
        if temp4
        {
            daily4.text = "weekly"
        }
        else
        {
            daily4.text = "daily"
        }
        
        let hour5 = def.integer(forKey: "hour5")
        let minute5 = def.integer(forKey: "minute5")
        let timing5 = def.integer(forKey: "timing5")
        hours5.text = "\(data.hours[hour5])"
        minutes5.text  = "\(data.minutes[minute5])"
        timings5.text = "\(data.timing[timing5])"
        let temp5 = def.bool(forKey: "dailybtn5")
        if temp5
        {
            daily5.text = "weekly"
        }
        else
        {
            daily5.text = "daily"
        }
        notifications()
        
    }
    
    func notifications() {
        
        let temp1 = def.bool(forKey: "btn1")
        let temp2 = def.bool(forKey: "btn2")
        let temp3 = def.bool(forKey: "btn3")
        let temp4 = def.bool(forKey: "btn4")
        let temp5 = def.bool(forKey: "btn5")
        
        let daily1 = def.bool(forKey: "dailybtn1")
        let daily2 = def.bool(forKey: "dailybtn2")
        let daily3 = def.bool(forKey: "dailybtn3")
        let daily4 = def.bool(forKey: "dailybtn4")
        let daily5 = def.bool(forKey: "dailybtn5")
        
        let weekday = Calendar.current.component(.weekday, from: Date())
        
        let content1 = UNMutableNotificationContent()
        content1.title = "Repelio"
        content1.body = "Its time to turn the pail"
        content1.sound = .default
        
        let content2 = UNMutableNotificationContent()
        content2.title = "Repelio"
        content2.body = "Its time to tip the vase"
        content2.sound = .default
        
        let content3 = UNMutableNotificationContent()
        content3.title = "Repelio"
        content3.body = "Its time to flip the flowerpot plate"
        content3.sound = .default
        
        let content4 = UNMutableNotificationContent()
        content4.title = "Repelio"
        content4.body = "Its time to loosen the hardened soil"
        content4.sound = .default
        
        let content5 = UNMutableNotificationContent()
        content5.title = "Repelio"
        content5.body = "Its time to clear roof gutters"
        content5.sound = .default
        

        let Hour1 = def.integer(forKey: "hour1")
        let Minute1 = def.integer(forKey: "minute1")
        let Timing1 = def.integer(forKey: "timing1")
        let hourstring1 = "\(data.hours[Hour1])"
        let hourint1 = Int(hourstring1) ?? 0
        var hours1:Int = hourint1
        let minutestring1 = "\(data.minutes[Minute1])"
        let minuteint1 = Int(minutestring1) ?? 0
        if Timing1 == 1
        {
            hours1 = hourint1 + 12
        }
        if hours1 == 24
        {
            hours1 = 12
        }
        if hours1 == 12
        {
            hours1 = 0
        }
        
        let Hour2 = def.integer(forKey: "hour2")
        let Minute2 = def.integer(forKey: "minute2")
        let Timing2 = def.integer(forKey: "timing2")
        let hourstring2 = "\(data.hours[Hour2])"
        let hourint2 = Int(hourstring2) ?? 0
        var hours2:Int = hourint2
        let minutestring2 = "\(data.minutes[Minute2])"
        let minuteint2 = Int(minutestring2) ?? 0
        if Timing2 == 1
        {
            hours2 = hourint2 + 12
        }
        if hours2 == 24
        {
            hours2 = 12
        }
        if hours2 == 12
        {
            hours2 = 0
        }
        
        let Hour3 = def.integer(forKey: "hour3")
        let Minute3 = def.integer(forKey: "minute3")
        let Timing3 = def.integer(forKey: "timing3")
        let hourstring3 = "\(data.hours[Hour3])"
        let hourint3 = Int(hourstring3) ?? 0
        var hours3:Int = hourint3
        let minutestring3 = "\(data.minutes[Minute3])"
        let minuteint3 = Int(minutestring3) ?? 0
        if Timing3 == 1
        {
            hours3 = hourint3 + 12
        }
        if hours3 == 24
        {
            hours3 = 12
        }
        if hours3 == 12
        {
            hours3 = 0
        }
        
        let Hour4 = def.integer(forKey: "hour4")
        let Minute4 = def.integer(forKey: "minute4")
        let Timing4 = def.integer(forKey: "timing4")
        let hourstring4 = "\(data.hours[Hour4])"
        let hourint4 = Int(hourstring4) ?? 0
        var hours4:Int = hourint4
        let minutestring4 = "\(data.minutes[Minute4])"
        let minuteint4 = Int(minutestring4) ?? 0
        if Timing4 == 1
        {
            hours4 = hourint4 + 12
        }
        if hours4 == 24
        {
            hours4 = 12
        }
        if hours4 == 12
        {
            hours4 = 0
        }
        
        let Hour5 = def.integer(forKey: "hour5")
        let Minute5 = def.integer(forKey: "minute5")
        let Timing5 = def.integer(forKey: "timing5")
        let hourstring5 = "\(data.hours[Hour5])"
        let hourint5 = Int(hourstring5) ?? 0
        var hours5:Int = hourint5
        let minutestring5 = "\(data.minutes[Minute5])"
        let minuteint5 = Int(minutestring5) ?? 0
        if Timing5 == 1
        {
            hours5 = hourint5 + 12
        }
        if hours5 == 24
        {
            hours5 = 12
        }
        if hours5 == 12
        {
            hours5 = 0
        }
        

        var datecomponents1 = DateComponents()
        datecomponents1.hour = hours1
        datecomponents1.minute = minuteint1
        let trigger1 = UNCalendarNotificationTrigger(dateMatching: datecomponents1, repeats: true)
        let request1 = UNNotificationRequest(identifier: "turn the pail", content: content1, trigger: trigger1)
        
        var datecomponents2 = DateComponents()
        datecomponents2.hour = hours2
        datecomponents2.minute = minuteint2
        let trigger2 = UNCalendarNotificationTrigger(dateMatching: datecomponents2, repeats: true)
        let request2 = UNNotificationRequest(identifier: "tip the vase", content: content2, trigger: trigger2)
        
        var datecomponents3 = DateComponents()
        datecomponents3.hour = hours3
        datecomponents3.minute = minuteint3
        let trigger3 = UNCalendarNotificationTrigger(dateMatching: datecomponents3, repeats: true)
        let request3 = UNNotificationRequest(identifier: "flip the flower pot", content: content3, trigger: trigger3)
        
        var datecomponents4 = DateComponents()
        datecomponents4.hour = hours4
        datecomponents4.minute = minuteint4
        let trigger4 = UNCalendarNotificationTrigger(dateMatching: datecomponents4, repeats: true)
        let request4 = UNNotificationRequest(identifier: "loosen the hardened soil", content: content4, trigger: trigger4)
        
        var datecomponents5 = DateComponents()
        datecomponents5.hour = hours5
        datecomponents5.minute = minuteint5
        let trigger5 = UNCalendarNotificationTrigger(dateMatching: datecomponents5, repeats: true)
        let request5 = UNNotificationRequest(identifier: "clear roof gutters", content: content5, trigger: trigger5)
        
        var datecomponents6 = DateComponents()
        datecomponents6.weekday = weekday
        datecomponents6.hour = hours1
        datecomponents6.minute = minuteint1
        let trigger6 = UNCalendarNotificationTrigger(dateMatching: datecomponents6, repeats: true)
        let request6 = UNNotificationRequest(identifier: "turn the pail", content: content1, trigger: trigger6)

        
        var datecomponents7 = DateComponents()
        datecomponents7.weekday = weekday
        datecomponents7.hour = hours2
        datecomponents7.minute = minuteint2
        let trigger7 = UNCalendarNotificationTrigger(dateMatching: datecomponents7, repeats: true)
        let request7 = UNNotificationRequest(identifier: "tip the vase", content: content2, trigger: trigger7)
        
        var datecomponents8 = DateComponents()
        datecomponents8.weekday = weekday
        datecomponents8.hour = hours3
        datecomponents8.minute = minuteint3
        let trigger8 = UNCalendarNotificationTrigger(dateMatching: datecomponents8, repeats: true)
        let request8 = UNNotificationRequest(identifier: "flip the flower pot", content: content3, trigger: trigger8)
        
        var datecomponents9 = DateComponents()
        datecomponents9.weekday = weekday
        datecomponents9.hour = hours4
        datecomponents9.minute = minuteint4
        let trigger9 = UNCalendarNotificationTrigger(dateMatching: datecomponents9, repeats: true)
        let request9 = UNNotificationRequest(identifier: "loosen the hardened soil", content: content4, trigger: trigger9)
        
        var datecomponents10 = DateComponents()
        datecomponents10.weekday = weekday
        datecomponents10.hour = hours5
        datecomponents10.minute = minuteint5
        let trigger10 = UNCalendarNotificationTrigger(dateMatching: datecomponents10, repeats: true)
        let request10 = UNNotificationRequest(identifier: "clear roof gutters", content: content5, trigger: trigger10)
        
        
    
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        if daily1 == false && temp1 == true
        {
            UNUserNotificationCenter.current().add(request1, withCompletionHandler: nil)
        }
        
        if daily2 == false && temp2 == true
        {
            UNUserNotificationCenter.current().add(request2, withCompletionHandler: nil)
        }
        
        if daily3 == false && temp3 == true
        {
            UNUserNotificationCenter.current().add(request3, withCompletionHandler: nil)
        }
        
        if daily4 == false && temp4 == true
        {
            UNUserNotificationCenter.current().add(request4, withCompletionHandler: nil)
        }
        
        if daily5 == false && temp5 == true
        {
            UNUserNotificationCenter.current().add(request5, withCompletionHandler: nil)
        }
        
        if daily1 == true && temp1 == true
        {
            UNUserNotificationCenter.current().add(request6, withCompletionHandler: nil)
        }
        
        if daily2 == true && temp2 == true
        {
            UNUserNotificationCenter.current().add(request7, withCompletionHandler: nil)
        }
        
        if daily3 == true && temp3 == true
        {
            UNUserNotificationCenter.current().add(request8, withCompletionHandler: nil)
        }
        
        if daily4 == true && temp4 == true
        {
            UNUserNotificationCenter.current().add(request9, withCompletionHandler: nil)
        }
        
        if daily5 == true && temp5 == true
        {
            UNUserNotificationCenter.current().add(request10, withCompletionHandler: nil)
        }
    }
    
   
    /*// MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
