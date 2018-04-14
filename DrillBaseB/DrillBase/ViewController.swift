//
//  ViewController.swift
//  DrillBase
//
//  Created by Vaibhav N Laghane on 8/27/17.
//  Copyright © 2017 DrillBase. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginLabel: UIButton!
    @IBOutlet weak var registerWithFacebookLabel: UILabel!
    @IBOutlet weak var registerWithEmailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.degreeOfArray(arr: [5,1,2,2,3,1])
         // self.degreeOfArray(arr: [6,1,1,2,1,2,2])
       // self.degreeOfArray(arr: [6,1,1,1,2,2,3,3,4,2])
        let loginButton = FBSDKLoginButton() ;
        // Optional: Place the button in the center of your view.
        loginButton.center = self.view.center;
        self.view.addSubview(loginButton) ;
        
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
//        if (FBSDKAccessToken().currentAccessToken) {
//            // User is logged in, do work such as go to next view controller.
//        }
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
        
        if segue.identifier == "showHomePage" {
            //let dvc = segue.destination as! HomePage
           // dvc.delegate = self
        }
    }
    
    
    /*
    func degreeOfArray(arr: [Int]) -> Int {
        // Write your code here.
        if(arr.count == 0){return 0}
        if(arr.count == 1){return 1}
        var mapNumOccurences = [Int: Int ]()
        var currMax = 0
        var currMaxNum = 0
        for i in 0...arr.count - 1{
            if(mapNumOccurences[arr[i]] == nil ){
                mapNumOccurences[arr[i]] = 0
            }
            mapNumOccurences[arr[i]] =  mapNumOccurences[arr[i]]! + 1 ;
            if(mapNumOccurences[arr[i]]! > currMax )
            {
                currMax  = mapNumOccurences[arr[i]]!
                currMaxNum = arr[i]
            }
        }
        
        if (currMax == 1){
            return 0
        }
        
        
        var componentArray = Array(mapNumOccurences.keys)
        var maxNumArray = [Int]()
        
        for num in componentArray{
            if(mapNumOccurences[num] == currMax){
                maxNumArray.append(num)
            }
        }
        
        var degree = getSmallestArray(maxNumArray: maxNumArray, currMax: currMax, inputArr: arr)

        
        print(degree)
        return degree
        
        
    }
    
    
    func getSmallestArray(maxNumArray:[Int],currMax: Int , inputArr: [Int])-> Int{
        var leastSubArrayLenght = 0
        for i  in 0...maxNumArray.count - 1 {
        
            var startIndex = -1
            var endIndex = -1
            var numCount = 0
            var subArrayLenght = 0
            var currMaxNum = maxNumArray[i]
            for j in 0...inputArr.count - 1{
                if(inputArr[j] == currMaxNum){
                    numCount = numCount + 1
                    if(startIndex == -1){
                        startIndex = j
                    }else if( numCount == currMax){
                        endIndex = j
                        subArrayLenght =  endIndex -  startIndex + 1
                        if(i == 0){leastSubArrayLenght = subArrayLenght }
                       else if( subArrayLenght < leastSubArrayLenght ){
                            leastSubArrayLenght = subArrayLenght
                        }
                    }
                }
            
        }
        
        }
        return leastSubArrayLenght
    }
 */

}

