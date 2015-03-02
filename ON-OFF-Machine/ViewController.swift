//
//  ViewController.swift
//  ON-OFF-Machine
//
//  Created by YG on 2/26/15.
//  Copyright (c) 2015 YuryG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var journalText = "Weclome To the ON / OFF Machine"
    @IBOutlet weak var myTextField: UITextView!
    
    
    
    @IBAction func switchToggled(sender: UISwitch) {

        if sender.on{
           
            myTextField.text =  timeNow() + "Switch ON \r" + myTextField.text
        
        } else{
            
            myTextField.text = timeNow() + "Switch OFF \r" + myTextField.text


            
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func timeNow()->String{
     let formatter = NSDateFormatter()
        formatter.dateFormat = "MM'/'dd  hh':'mm':'ss  "
        let now = formatter.stringFromDate(NSDate())
        println(now)
        return now
    }
    
}

