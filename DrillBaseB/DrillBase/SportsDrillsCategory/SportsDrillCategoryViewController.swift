//
//  SportsDrillCategoryViewController.swift
//  DrillBase
//
//  Created by Vaibhav N Laghane on 9/10/17.
//  Copyright © 2017 DrillBase. All rights reserved.
//

import UIKit

class SportsDrillCategorySelection: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableDrills: UITableView!
    @IBOutlet weak var tableCategory: UITableView!
    @IBOutlet weak var tableSport: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: - Tableview Delegate & Datasource
    func tableView(_ tableView:UITableView, numberOfRowsInSection section:Int) -> Int
    {
        if(tableView == tableSport){
            let sports = SportsModel.baseball
            return sports.getLen()
        }
        if(tableView == tableDrills){
            let drills = DrillsModel.catching
            return drills.getLen( )
        }
        if(tableView == tableCategory){
            let category = SportsModel.baseball
            return category.getLen()
        }
        return 10
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "SDCTableViewCell")
       
        if(tableView == tableSport){
           
            switch indexPath.row  {
            
            case 0:
                 cell.detailTextLabel?.text =   SportsModel.baseball.rawValue
            case 1:
                cell.detailTextLabel?.text =   SportsModel.basketBall.rawValue
            case 2:
                cell.detailTextLabel?.text =   SportsModel.football.rawValue
            case 3:
                cell.detailTextLabel?.text =   SportsModel.soccer.rawValue
            case 4:
                cell.detailTextLabel?.text =   SportsModel.volleyball.rawValue
            default:
                cell.detailTextLabel?.text =   "None"
          
            }
        }
        
            if(tableView == tableDrills){
                switch indexPath.row  {
              
                case 0:
                    cell.detailTextLabel?.text =   DrillsModel.catching.rawValue
                case 1:
                    cell.detailTextLabel?.text =   DrillsModel.fielding.rawValue
                case 2:
                    cell.detailTextLabel?.text =   DrillsModel.hitting.rawValue
                case 3:
                    cell.detailTextLabel?.text =   DrillsModel.pitching.rawValue
                case 4:
                    cell.detailTextLabel?.text =   DrillsModel.throwing.rawValue
                
                default:
                    cell.detailTextLabel?.text =   "None"
                }
                
            }
            
                if(tableView == tableCategory){
                    switch indexPath.row  {
                  
                    case 0:
                        cell.detailTextLabel?.text =   CategoryModel.balance.rawValue
                    case 1:
                        cell.detailTextLabel?.text =  CategoryModel.batPath.rawValue
                    case 2:
                        cell.detailTextLabel?.text =   CategoryModel.batspeed.rawValue
                    case 3:
                        cell.detailTextLabel?.text =   CategoryModel.extensions.rawValue
                    case 4:
                        cell.detailTextLabel?.text =  CategoryModel.lowerbody.rawValue
                    case 5:
                        cell.detailTextLabel?.text =   CategoryModel.zonehitting.rawValue
                    case 6:
                        cell.detailTextLabel?.text =   CategoryModel.timing.rawValue
                    case 7:
                        cell.detailTextLabel?.text =  CategoryModel.other.rawValue
                    default:
                        cell.detailTextLabel?.text =   "None"
                        
                    }
            }
        
        return cell
    }
    
    @nonobjc func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: IndexPath)
    {
        
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
