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
//
//        // Do any additional setup after loading the view.
//        let rect1       = CGRect(x: 50, y: 100, width: 300, height: 100)
//        let view1       = addView(rect: rect1)
//        let rect2        = CGRect(x: 50, y: 200, width: 300, height: 100)
//        let view2 = addView(rect: rect2)
//        let rect3 = CGRect(x: 50, y: 300, width: 300, height: 100)
//        let view3 = addView(rect: rect1)
//        
//        self.view.addSubview(view1 )
//        self.view.addSubview(rect2)
//        self.view.addSubview(rect3)
 
        let image = UIImage.triangle(side: 200, color: UIColor.green)
        let imageView = UIImageView(image: image)
        
           // self.view.addSubview(imageView)
        
    }

    
    @IBAction func featuredButtonClicked(_ sender: Any) {
        
        //let fNib = UINib(nibName: "FeaturedView", bundle: nil )
        let featureView = FeaturedView(nibName: "FeaturedView", bundle: nil )
        self.present(featureView, animated: false, completion: nil )
        
        
    }
    func loadVideo(){
 
        let playVideo = Video()
        
        if  let player = playVideo.player()// playVideo.videoPlayer()
        {
            self.present(player, animated: true) {
                player.player!.play()
            }
        }
    }
    
    func addView( rect: CGRect){
        
        // Do any additional setup after loading the view.
        let rect = CGRect(x: 50, y: 200, width: 300, height: 100)
        let view1 = ContentViewHolder(frame: rect)
        let layer = view1.layer
        layer.cornerRadius = 2
        view1.layer.cornerRadius = 12
        
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        //self.loadVideo()
    }
    
    override func viewDidLayoutSubviews() {
       //
    }
    
    override func viewWillLayoutSubviews() {
       // code
    }
    
    override func viewWillAppear(_ animated: Bool) {
       // code
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
