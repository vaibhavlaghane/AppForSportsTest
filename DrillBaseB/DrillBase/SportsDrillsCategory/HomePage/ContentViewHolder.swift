//
//  ContentViewHolder.swift
//  DrillBase
//
//  Created by Vaibhav N Laghane on 10/16/17.
//  Copyright © 2017 DrillBase. All rights reserved.
//

import UIKit

class ContentViewHolder: UIView {
    
    override init(frame: CGRect) {
        super.init(frame:frame )
        
        let  point: CGPoint          = frame.origin
        let  size                           = CGSize(width: 300, height: 100)
        let  rect                           = CGRect(origin: point , size: size )
        self.frame                       = rect
        self.backgroundColor     = UIColor.magenta
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    func addLabel(label:String ){
    
       // let labelUI = UILabel(frame: <#T##CGRect#>)
        
    }
}
