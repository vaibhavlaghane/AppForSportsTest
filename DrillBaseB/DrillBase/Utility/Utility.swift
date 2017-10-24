//
//  Utility.swift
//  DrillBase
//
//  Created by Vaibhav N Laghane on 10/22/17.
//  Copyright © 2017 DrillBase. All rights reserved.
//

import UIKit

extension UIImage {
    
    static func triangle(side: CGFloat, color: UIColor) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(CGSize(width: side, height: side), false, 0)
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: side / 2, y: 0))
        path.addLine(to: CGPoint(x: side, y: side))
        path.addLine(to: CGPoint(x: 0, y: side))
        path.close()
        
        color.setFill()
        path.fill()
        
        let image = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        
        return image
    }
}

class Utility: NSObject {

}
