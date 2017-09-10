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
        return 10
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "SDCTableViewCell")
        //cell.backgroundColor = UIColor.blue
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath)
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
