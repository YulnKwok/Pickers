//
//  DataPickerViewController.swift
//  Pickers
//
//  Created by 郭钰麟 on 16/1/4.
//  Copyright © 2016年 Yuln. All rights reserved.
//

import UIKit

class DataPickerViewController: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func buttonPressed(sender: UIButton) {
        let date = datePicker.date
        let message = "the day and time you selected is \(date)"
        let alert = UIAlertController(
        title: "Date and Time Selected", message: message, preferredStyle: .Alert)
        let action = UIAlertAction(
        title: "that's so true", style: .Default, handler: nil)
        let action2 = UIAlertAction(title: "just a test", style: .Default, handler: nil)
        alert.addAction(action)
        alert.addAction(action2)
        presentViewController(alert, animated: true, completion: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = NSDate()
        datePicker.setDate(date, animated: false)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
