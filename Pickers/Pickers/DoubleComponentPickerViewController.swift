//
//  DoubleComponentPickerViewController.swift
//  Pickers
//
//  Created by 郭钰麟 on 16/1/4.
//  Copyright © 2016年 Yuln. All rights reserved.
//

import UIKit

class DoubleComponentPickerViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    private let greetingComponent = 0
    private let animalComponent = 1
    
    private let greetingTypes = ["你好","我好","大家好","她好","他好","它好","都好"]
    private let animalTypes = ["狗","猫","鸟","虫","狮","虎"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == greetingComponent{
            return greetingTypes.count
        }else{
            return animalTypes.count
        }
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == greetingComponent{
            return greetingTypes[row]
        }else{
            return animalTypes[row]
        }
    }
    
    @IBOutlet weak var doublePicker: UIPickerView!
    
    
    @IBAction func buttonPressed(sender: UIButton) {
        let greetingRow = doublePicker.selectedRowInComponent(greetingComponent)
        let animalRow = doublePicker.selectedRowInComponent(animalComponent)
        let greeting = greetingTypes[greetingRow]
        let animal = animalTypes[animalRow]
        let message = "Say \(greeting) To \(animal)"
        
        let alert = UIAlertController (title: "This is what you say", message: message, preferredStyle: .Alert)
        let action = UIAlertAction(title: "They heard it!", style: .Default, handler: nil)
        
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
