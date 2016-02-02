//
//  DependentComponentPickerViewController.swift
//  Pickers
//
//  Created by 郭钰麟 on 16/1/4.
//  Copyright © 2016年 Yuln. All rights reserved.
//

import UIKit

class DependentComponentPickerViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{
    
    @IBOutlet weak var dependentPicker: UIPickerView!
    private let stateComponent = 0                       //the index of the fist wheel
    private let zipComponent = 1                         //the index of the second wheel
    private var stateZips:[String:[String]]!
    private var states:[String]!
    private var zips:[String]!
    
    @IBAction func buttonPressed(sender: UIButton)
    {
        let stateRow = dependentPicker.selectedRowInComponent(stateComponent)
        let zipRow = dependentPicker.selectedRowInComponent(zipComponent)
        let state = states[stateRow]
        let zip = zips[zipRow]
        
        let title = "You selected zip code \(zip)"
        let message = "\(zip) is in \(state)"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bundle = NSBundle.mainBundle()
        let plistURL = bundle.URLForResource("statedictionary", withExtension: "plist")
        stateZips = NSDictionary(contentsOfURL: plistURL!) as! [String:[String]]
        let allStates = stateZips.keys
        states = allStates.sort()
        let selectedState = states[0]
        zips = stateZips[selectedState]
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:-
    //MARK:Picker Data Source Methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == stateComponent{
            return states.count
        }else{
            return zips.count
        }
    }
    
    
    //MARK:Picker Delegate Methods
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == stateComponent{
            return states[row]
        }else{
            return zips[row]
        }
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
