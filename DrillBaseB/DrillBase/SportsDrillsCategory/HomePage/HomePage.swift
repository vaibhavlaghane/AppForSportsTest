//
//  HomePage.swift
//  DrillBase
//
//  Created by Vaibhav N Laghane on 10/1/17.
//  Copyright © 2017 DrillBase. All rights reserved.
//

import UIKit
import MediaPlayer
import CoreMedia

class HomePage: UIViewController {

    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var toobar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }

    
    func loadVideo(){
        
////        var fileNamepath =
////    
////        NSString  *fileNamePath = mVideo;
////        NSArray   *paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory,NSUserDomainMask, YES);
////        NSString  *documentsDirectory = [paths  objectAtIndex:0];
////        NSString  *oldappSettingsPath = [documentsDirectory stringByAppendingPathComponent:fileNamePath];
//      //  var path:URL  =
////        self.mPlayer = [[MPMoviePlayerController alloc] initWithContentURL:path];
//        
//        //let playerViewController = AVPlayerViewController()
//        
//        let videoURLWithPath = "/Resources/Catching-Framing.mov"
//        let videoURL = NSURL(string: videoURLWithPath)
//      //  playerViewController.player = AVPlayer.init(url: videoURL as! URL) as AVPlayer
//        
//        
//        var mPlayer = MPMoviePlayerController(contentURL: videoURL as URL!)
//        mPlayer.controlStyle = .fullscreen
//        mPlayer.fullscreen = YES;
//        mPlayer.scalingMode = .fill//  MPMovieScalingModeFill;
//        [[self.mPlayer view] setFrame: CGRectMake(0, 0, 480, 320)];
//        [self.view addSubview:[self.mPlayer view]];
//        [self.mPlayer prepareToPlay];
//        [self.mPlayer play];
//        
     
        let playVideo = Video()
       if  let player = playVideo.player()// playVideo.videoPlayer()
       {
        self.present(player, animated: true) {
            player.player!.play()
        }
        }
    }
    
    

    override func viewDidAppear(_ animated: Bool) {
        
        self.loadVideo()
    }
    
    override func viewDidLayoutSubviews() {
       // <#code#>
    }
    
    override func viewWillLayoutSubviews() {
       // <#code#>
    }
    
    override func viewWillAppear(_ animated: Bool) {
       // <#code#>
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
