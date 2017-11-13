//
//  HomePageContainerViewController.swift
//  DrillBase
//
//  Created by Vaibhav N Laghane on 11/12/17.
//  Copyright © 2017 DrillBase. All rights reserved.
//

import UIKit

class HomePageContainerViewController: UIViewController {
    

    @IBOutlet weak var contentView: UIView!
    var  homePageViewController: HomePageViewController = HomePageViewController()
    
    @IBAction func homeButtonClicked(_ sender: Any) {
        hideContentController(content: homePageViewController)
        displayContentController(content: homePageViewController)
        //  self.performSegue(withIdentifier: "showHomePage", sender: sender  )
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
// Do any additional setup after loading the view. 
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        self.homePageViewController = storyboard.instantiateViewController(withIdentifier: "HomePageViewController") as! HomePageViewController
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

     // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showHomePage" {
            _ = segue.destination as! HomePageViewController
             //dvc.delegate = self
        }
    }
    
    func displayContentController(  content:UIViewController ) {
        self.addChildViewController(content)
        content.view.frame  = self.contentView.frame
        self.view.addSubview(content.view)
        content.didMove(toParentViewController: self )
    }

    func hideContentController(  content:UIViewController ) {
        content.willMove(toParentViewController: nil )
        content.view.removeFromSuperview()
        content.removeFromParentViewController()
    }

    func cycleFromViewController(oldVC:UIViewController , newVC: UIViewController )->Void  {
    // Prepare the two view controllers for the change.
        oldVC.willMove(toParentViewController: nil )
        self.addChildViewController(newVC)
    // Get the start frame of the new view controller and the end frame
    // for the old view controller. Both rectangles are offscreen.
    newVC.view.frame = self.contentView.frame// [self newViewStartFrame];
     let    endFrame: CGRect  =  self.contentView.frame// [self newViewStartFrame];//[self oldViewEndFrame];
    
    // Queue up the transition animation.
        self.transition(from: oldVC, to: newVC, duration: 0.25, options: UIViewAnimationOptions(rawValue: 0), animations: {
            // Animate the views to their final positions.
            newVC.view.frame = oldVC.view.frame;
            oldVC.view.frame = endFrame;
        }) { (finished) in
            oldVC.removeFromParentViewController()
            newVC.didMove(toParentViewController: self )
        }
//    [self transitionFromViewController: oldVC toViewController: newVC
//    duration: 0.25 options:0
//    animations:^{
//    // Animate the views to their final positions.
//    newVC.view.frame = oldVC.view.frame;
//    oldVC.view.frame = endFrame;
//    }
//    completion:^(BOOL finished) {
//    // Remove the old view controller and send the final
//    // notification to the new view controller.
//    [oldVC removeFromParentViewController];
//    [newVC didMoveToParentViewController:self];
//    }];
    }


}
