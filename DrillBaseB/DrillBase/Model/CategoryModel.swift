//
//  CategoryModel.swift
//  DrillBase
//
//  Created by Vaibhav N Laghane on 9/10/17.
//  Copyright © 2017 DrillBase. All rights reserved.
//

import UIKit

enum  CategoryModel    :String {
        
        func getLen()->Int {
            return 8
            
        }
        case batPath                = "BatPath"
        case extensions           = "Extension"
        case balance                 = "Balance"
        case batspeed               = "BatSpeed"
        case lowerbody            = "LowerBody"
        case zonehitting           = "ZoneHitting"
        case timing                   = "Timing"
        case other                     = "Other"
        
}
