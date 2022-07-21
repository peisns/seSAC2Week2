//
//  WorldTableViewController.swift
//  seSAC2Week2
//
//  Created by Brother Model on 2022/07/21.
//

import UIKit

class WorldTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 110
    }
    

    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 13
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WorldTableViewCell") as! WorldTableViewCell
        
        
        return cell
        
    }
    

    
    
    

}
