//
//  HomePageContainerViewController.swift
//  DrillBase
//
//  Created by Vaibhav N Laghane on 11/12/17.
//  Copyright © 2017 DrillBase. All rights reserved.
//

import UIKit

class HomePageContainerViewController: UIViewController {

    @IBAction func homeButtonClicked(_ sender: Any) {
        
        self.performSegue(withIdentifier: "showHomePage", sender: sender  )
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
            let dvc = segue.destination as! HomePage
             //dvc.delegate = self
        }
    }
    

}
