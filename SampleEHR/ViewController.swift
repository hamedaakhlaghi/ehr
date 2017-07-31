//
//  ViewController.swift
//  SampleEHR
//
//  Created by hamed akhlaghi on 5/7/1396 AP.
//  Copyright © 1396 nuesoft. All rights reserved.
//

import UIKit
import DateTimePicker
class ViewController: UIViewController {

    @IBOutlet weak var leftSegmentControl: UISegmentedControl!
    @IBOutlet weak var vLeftDateSegment: UIView!
    @IBOutlet weak var vRightDateSgment: UIView!
    @IBOutlet weak var rightSegmentControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    func initSegments(){
        self.leftSegmentControl.customizeAppearance(for: 1)
        self.leftSegmentControl.selectedSegmentIndex = 0
        onLeftSegmentClicked(leftSegmentControl)
        self.rightSegmentControl.customizeAppearance(for: 1)
        self.rightSegmentControl.selectedSegmentIndex = 0
        onRightSegmentClicked(rightSegmentControl)
        self.vLeftDateSegment.addBorder(toSide: .Bottom, withColor: UIHelper.lightGrayColor.cgColor, andThickness: 0.5)
        self.vRightDateSgment.addBorder(toSide: .Bottom, withColor: UIHelper.lightGrayColor.cgColor, andThickness: 0.5)
    }
    
    @IBAction func onRightSegmentClicked(_ uiSegmentControl: UISegmentedControl) {
        UIHelper.addBorder(uiSegmentControl, color:UIHelper.darkGreenColor)
    }
    @IBAction func onLeftSegmentClicked(_ uiSegmentControl: UISegmentedControl) {
        
        UIHelper.addBorder(uiSegmentControl, color: UIColor.red)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        initSegments()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btDate(_ sender: Any) {
        
        let picker = DateTimePicker.show()
        picker.timeZone = TimeZone.current
        let date = Date()
        picker.selectedDate = date
        picker.highlightColor = UIColor(red: 255.0/255.0, green: 138.0/255.0, blue: 138.0/255.0, alpha: 1)
        picker.isDatePickerOnly = false // to hide time and show only date picker
       
        picker.completionHandler = { date in
            // do something after tapping done
        }
    }
}


