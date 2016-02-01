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
    private let stateComponent = 0
    private let zipComponent = 1
    private var stateZips:[String:[String]]!
    private var state:[String]!
    private var zips:[String]!
    
    @IBAction func buttonPressed(sender: UIButton) {
        let stateRow = dependentPicker.selectedRowInComponent(stateComponent)
        let zipRow = dependentPicker.selectedRowInComponent(zipComponent)
        
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK:-
    //MARK:Picker Data Source Methods
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
    }
    
    //MARK:Picker Delegate Methods
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
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
