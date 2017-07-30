//  extensionUISegmentedControl.swift
//  SampleEHR
//
//  Created by hamed akhlaghi on 5/8/1396 AP.
//  Copyright © 1396 nuesoft. All rights reserved.
//

import UIKit

extension UISegmentedControl {
    
    func customizeAppearance(for height: Int) {
        
//        let extractedExpr: Void = setTitleTextAttributes([NSAttributedStringKey.font:UIFont(name:"Helvetica Neue", size:13.0)!,NSAttributedStringKey.foregroundColor:UIColor.white], for:.normal)
//        extractedExpr
//        setTitleTextAttributes([NSAttributedStringKey.font:UIFont(name:"Helvetica Neue", size:13.0)!,NSAttributedStringKey.foregroundColor:UIColor.white], for:.selected)
        setDividerImage(UIImage().colored(with: .clear, size: CGSize(width: 1, height: height)), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
        setBackgroundImage(UIImage().colored(with: .clear, size: CGSize(width: 1, height: height)), for: .normal, barMetrics: .default)
    }
}


extension UIImage {
    
    func colored(with color: UIColor, size: CGSize) -> UIImage {
        UIGraphicsBeginImageContext(size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(color.cgColor);
        let rect = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        context!.fill(rect);
        let image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return image!
    }
}



