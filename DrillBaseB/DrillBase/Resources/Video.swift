//
//  Video.swift
//  DrillBase
//
//  Created by Vaibhav N Laghane on 10/1/17.
//  Copyright © 2017 DrillBase. All rights reserved.
//

import UIKit
import CoreVideo
import AVKit
import AVFoundation

class Video: NSObject {

    
    func videoPlayer()->AVPlayerViewController{
 
        let playerViewController = AVPlayerViewController()
 
    
        
        let videoURLWithPath = "/Drillbase/Resources/Catching-Framing.mov"
        let videoURL = NSURL(string: videoURLWithPath)
        playerViewController.player = AVPlayer.init(url: videoURL as! URL) as AVPlayer
        
        return playerViewController
    }
    
    
      func player()->AVPlayerViewController?{
        guard let path = Bundle.main.path(forResource: "Catching-Framing", ofType:"mov") else {
            debugPrint("video.m4v not found")
            return nil
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
       return playerController
    }
    
}
