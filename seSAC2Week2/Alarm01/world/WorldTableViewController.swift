//
//  WorldTableViewController.swift
//  seSAC2Week2
//
//  Created by Brother Model on 2022/07/30.
//

import UIKit

class WorldTableViewController: UITableViewController {
    
    static let identifier = "WorldTableViewController"

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 110
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: WorldTableViewCell.identifier, for: indexPath) as? WorldTableViewCell else {
            presentBasicAlert(message: "wrong table view or cell")
            return UITableViewCell() }
        return cell
        
    }

}
