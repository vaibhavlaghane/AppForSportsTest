//
//  DrillsModel.swift
//  DrillBase
//
//  Created by Vaibhav N Laghane on 9/10/17.
//  Copyright © 2017 DrillBase. All rights reserved.
//

import UIKit

enum DrillsModel :String {
        
        func getLen()->Int {
            return 5
            
        }
        case hitting              = "Hitting"
        case catching               = "Catching"
        case pitching                 = "Pitching"
        case throwing           = "Trowing"
        case fielding            = "Fielding"
        
}
