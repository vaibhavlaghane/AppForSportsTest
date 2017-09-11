//
//  SportsModel.swift
//  DrillBase
//
//  Created by Vaibhav N Laghane on 9/10/17.
//  Copyright © 2017 DrillBase. All rights reserved.
//

import UIKit

enum SportsModel :String {
 
    func getLen()->Int {
        return 5
    
    }
    case baseball              = "BaseBall"
    case football               = "FootBall"
    case soccer                 = "Soccer"
    case basketBall           = "BasketBall"
    case volleyball            = "VolleyBall"
    
}
