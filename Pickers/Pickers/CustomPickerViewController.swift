//
//  CustomPickerViewController.swift
//  Pickers
//
//  Created by 郭钰麟 on 16/1/4.
//  Copyright © 2016年 Yuln. All rights reserved.
//

import UIKit
import AudioToolbox

class CustomPickerViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var winLabel: UILabel!
    private var images:[UIImage]!
    @IBOutlet weak var button:UIButton!
    private var winSound:SystemSoundID = 0
    private var crunchSound:SystemSoundID = 0
    
    
    @IBAction func spin(sender: UIButton)
    {
        var win = false
        var lastValue = 0
        var numInRow = 0
        for i in 0..<5
        {
            let newValue = Int(arc4random_uniform(UInt32(images.count)))
            if newValue == lastValue{
                ++numInRow
            }else{
                lastValue = 1
            }
            lastValue = newValue
            
            picker.selectRow(newValue, inComponent: i, animated: true)
            picker.reloadComponent(i)
            if numInRow >= 3{
                win = true
            }
            winLabel.text = win ? "Winner!":" "
        }
        
    }
    
    func showButton(){
        button.hidden = false
    }
    
    func playWinSound(){
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        images = [UIImage(named: "apple")!,UIImage(named: "bar")!,UIImage(named: "cherry")!,UIImage(named: "crown")!,UIImage(named: "lemon")!,UIImage(named: "seven")!]
        winLabel.text = " "

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 5
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return images.count
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let image = images[row]
        let imageView = UIImageView(image: image)
        return imageView
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
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
