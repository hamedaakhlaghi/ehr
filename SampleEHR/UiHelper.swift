//
//  UiHelper.swift
//  SampleEHR
//
//  Created by hamed akhlaghi on 5/8/1396 AP.
//  Copyright © 1396 nuesoft. All rights reserved.
//

import UIKit


class UiHelper{
    
    static func addBorder(_ uiSegmentControl: UISegmentedControl){
        
        var upperBorder: CALayer = CALayer()
        upperBorder.backgroundColor = UIColor.init(red: 255.0, green:255.0, blue: 255.0, alpha: 1.0).cgColor
        upperBorder.frame = CGRect(x: 0, y: Int(ceil(uiSegmentControl.subviews[0].bounds.height))-1, width: Int(floor(uiSegmentControl.bounds.width)), height: 3)
        uiSegmentControl.layer.addSublayer(upperBorder)
        
        for i in 0..<uiSegmentControl.subviews.count {
            
            if i == uiSegmentControl.selectedSegmentIndex {
                upperBorder = CALayer()
                upperBorder.backgroundColor = UIColor.init(red: 215/255.0, green: 0.0, blue: 30/255.0, alpha: 1.0).cgColor
                upperBorder.frame = CGRect(x: i*Int(ceil(uiSegmentControl.subviews[i].bounds.width)), y: Int(ceil(uiSegmentControl.subviews[i].bounds.height))-1, width: Int(floor(uiSegmentControl.subviews[i].bounds.width)), height: 1)
                uiSegmentControl.layer.addSublayer(upperBorder)
            }
        }
        
    }
    
}
