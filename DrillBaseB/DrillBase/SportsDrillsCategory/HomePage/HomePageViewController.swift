//
//  HomePageViewController.swift
//  DrillBase
//
//  Created by Vaibhav N Laghane on 11/12/17.
//  Copyright © 2017 DrillBase. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {
var delegate: HomePageContainerViewController?
    
    @IBAction func newDrillsButtonClicked(_ sender: Any) {
        delegate?.overLayView()
    }
    
    @IBAction func timelineButtonClicked(_ sender: Any) {
  
        delegate?.overLayViewTL(str:"this is view TimeLine ")
    }
    @IBAction func featuredButtonClicked(_ sender: Any) {
     
        delegate?.overLayViewND(str:"this is view FeaturedView ")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
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
