//
//  PlanTableViewController.swift
//  IndomitableProject
//
//  Created by Metta Saridewi Wahab on 28/11/17.
//  Copyright © 2017 RagingWind. All rights reserved.
//

import UIKit

class PlanTableViewController: UIViewController {
    @IBOutlet weak var planTableView: UITableView!
    var plans: [Plan] = project.schedule.plans //get plans from project
    
    override func viewDidLoad() {
        super.viewDidLoad()
        planTableView.dataSource = self
    }
    
}

extension PlanTableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = planTableView.dequeueReusableCell(withIdentifier: "planCell", for: indexPath) as! PlanTableViewCell
        let cellData = plans[indexPath.row]
        
        cell.name.text = cellData.name
        cell.days.text = "\(cellData.duration)d"
        return cell
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return plans.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    

}
