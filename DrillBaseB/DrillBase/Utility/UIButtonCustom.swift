//
//  UIButtonCustom.swift
//  DrillBase
//
//  Created by Vaibhav N Laghane on 10/23/17.
//  Copyright © 2017 DrillBase. All rights reserved.
//

import UIKit

class UIButtonCustom: UIButton {
    
  
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
//        let x = rect.origin.x
//        let y = rect.origin.y
//        
        let width = rect.width
        let height = rect.height
        
        let path = UIBezierPath()
        path.move(to: CGPoint(x: width/2, y: height/2 ) )
        path.addLine(to: CGPoint(x: width/2 - width/4 , y: 0 ) )
        path.addLine(to: CGPoint(x: width/2 + width/4, y: 0 ) )
        path.close()
        
        let layer = CAShapeLayer()
        layer.frame = self.bounds
        layer.path = path.cgPath
        layer.fillColor = UIColor.darkGray.cgColor
        self.layer.addSublayer(layer)
        
    }
   

}
