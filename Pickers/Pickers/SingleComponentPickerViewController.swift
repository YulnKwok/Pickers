//
//  SingleComponentPickerViewController.swift
//  Pickers
//
//  Created by 郭钰麟 on 16/1/4.
//  Copyright © 2016年 Yuln. All rights reserved.
//

import UIKit

class SingleComponentPickerViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    
    //MARK:-
    //MARK:Picker Data Source Methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return charaterNames.count
    }
    
    //MARK:Picker Delegate Methods
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return charaterNames[row]
    }
    
    
    private let charaterNames = ["Luke","Leia","Han","Chewbacca","Artoo","Threepio","Lando"]
    
    @IBOutlet weak var singlePicker: UIPickerView!
    
    @IBAction func buttonPressed(sender: UIButton) {
        let row = singlePicker.selectedRowInComponent(0)
        let selected = charaterNames[row]
        let title = "You Selected \(selected)!"
        
        let alert = UIAlertController(title: title, message: "Thank You!", preferredStyle: .ActionSheet)
        let action = UIAlertAction(title: "You're Welcome!", style: .Destructive, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
