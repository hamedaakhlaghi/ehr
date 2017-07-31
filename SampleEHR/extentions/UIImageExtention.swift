//
//  UIImageExtention.swift
//  SampleEHR
//
//  Created by hamed akhlaghi on 5/9/1396 AP.
//  Copyright © 1396 nuesoft. All rights reserved.
//

import UIKit
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
