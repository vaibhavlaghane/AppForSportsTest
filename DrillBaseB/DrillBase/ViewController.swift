//
//  ViewController.swift
//  DrillBase
//
//  Created by Vaibhav N Laghane on 8/27/17.
//  Copyright © 2017 DrillBase. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var loginLabel: UIButton!
    @IBOutlet weak var registerWithFacebookLabel: UILabel!
    @IBOutlet weak var registerWithEmailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let layerC = registerWithEmailLabel.layer
        layerC.cornerRadius = 8
        registerWithEmailLabel.layer.masksToBounds = true
        registerWithEmailLabel.layer.cornerRadius = 8
        
        let layerF = registerWithFacebookLabel.layer
        layerF.cornerRadius = 8
        registerWithFacebookLabel.layer.masksToBounds = true
        
        registerWithFacebookLabel.layer.cornerRadius = 8
        let layerS = loginLabel.layer
        layerS.cornerRadius = 8
        
        loginLabel.layer.masksToBounds = true
        loginLabel.layer.cornerRadius = 8
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func loginButtonClicked(_ sender: Any) {
        
//        print("login button clicked ")
////        let baseTabBarController = storyboard?.instantiateViewController(withIdentifier: "BaseTabBarController") as! BaseTabBarController
////        self.present(baseTabBarController, animated:true , completion: nil)
//        
//        print("login button clicked ")
//        let homePage = HomePage(nibName: "HomePage", bundle: nil )
//        self.present(homePage, animated:true , completion: nil)

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
//        if segue.identifier == "showHomePage" {
//            //let dvc = segue.destination as! HomePage
//           // dvc.delegate = self
//        }
    }

}

