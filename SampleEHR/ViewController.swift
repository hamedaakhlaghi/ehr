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

    @IBOutlet weak var `as`: UIView!
    @IBOutlet weak var leftSegment: UISegmentedControl!
    @IBOutlet weak var rightSegment: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    func initSegments(){
       
        
    }
    
    @IBAction func onSegmentClicked(_ uiSegmentControl: UISegmentedControl) {
        
        UiHelper.addBorder(uiSegmentControl)
//        var upperBorder: CALayer = CALayer()
//        upperBorder.backgroundColor = UIColor.init(red: 255.0, green:255.0, blue: 255.0, alpha: 1.0).cgColor
//        upperBorder.frame = CGRect(x: 0, y: Int(ceil(sender.subviews[0].bounds.height))-1, width: Int(floor(sender.bounds.width)), height: 1)
//        sender.layer.addSublayer(upperBorder)
//
//        for i in 0..<sender.subviews.count {
//
//            if i == self.leftSegment.selectedSegmentIndex {
//                upperBorder = CALayer()
//                upperBorder.backgroundColor = UIColor.init(red: 215/255.0, green: 0.0, blue: 30/255.0, alpha: 1.0).cgColor
//                upperBorder.frame = CGRect(x: i*Int(ceil(sender.subviews[i].bounds.width)), y: Int(ceil(sender.subviews[i].bounds.height))-1, width: Int(floor(sender.subviews[i].bounds.width)), height: 1)
//                sender.layer.addSublayer(upperBorder)
//            }
//        }
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        self.leftSegment.customizeAppearance(for: 1)
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


