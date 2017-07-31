//
//  UiHelper.swift
//  SampleEHR
//
//  Created by hamed akhlaghi on 5/8/1396 AP.
//  Copyright © 1396 nuesoft. All rights reserved.
//

import UIKit


class UIHelper{
    
    static var veryDarkGreenColor=UIColor(netHex: 0x2824)
    static var darkGreenColor=UIColor(netHex: 0x008f8a)
    static var lightGreenColor=UIColor(netHex: 0x00b3ac)
    static var lightGrayColor=UIColor(netHex: 0x000000).withAlphaComponent(0.54)



    
    static func addBorder(_ uiSegmentControl: UISegmentedControl,color:UIColor){
        
        var upperBorder: CALayer = CALayer()
        upperBorder.backgroundColor = UIColor.init(red: 255.0, green:255.0, blue: 255.0, alpha: 1.0).cgColor
        upperBorder.frame = CGRect(x: 0, y: Int(ceil(uiSegmentControl.subviews[0].bounds.height))-1, width: Int(floor(uiSegmentControl.bounds.width)), height: 5)
        uiSegmentControl.layer.addSublayer(upperBorder)
        
        for i in 0..<uiSegmentControl.subviews.count {
            
            if i == uiSegmentControl.selectedSegmentIndex {
                upperBorder = CALayer()
                upperBorder.backgroundColor = color.cgColor
                upperBorder.frame = CGRect(x: i*Int(ceil(uiSegmentControl.subviews[i].bounds.width)), y: Int(ceil(uiSegmentControl.subviews[i].bounds.height))-1, width: Int(floor(uiSegmentControl.subviews[i].bounds.width)), height: 4)
                uiSegmentControl.layer.addSublayer(upperBorder)
            }
        }
        
    }
    
}
