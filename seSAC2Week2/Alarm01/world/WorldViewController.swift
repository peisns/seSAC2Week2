//
//  WorldViewController.swift
//  seSAC2Week2
//
//  Created by Brother Model on 2022/07/28.
//

import UIKit

class WorldViewController: UIViewController {

    @IBOutlet weak var headerViewOfTableView: UIView!
    @IBOutlet weak var labelInHeaderView: UILabel!
    
    @IBOutlet weak var worldTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        //title = "세계 시계"
        
        
        //change navigation bar title color
//        let textAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
//        print(navigationController)
//        navigationController?.navigationBar.tintColor = .white
//        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        let navi = UINavigationBarAppearance()
        navi.configureWithTransparentBackground()
        
        navi.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.scrollEdgeAppearance = navi
        navigationController?.navigationBar.standardAppearance = navi
        navigationController?.navigationBar.compactAppearance = navi
        

        
        headerViewOfTableView.backgroundColor = .clear
        labelInHeaderView.textColor = .white
        
        
        worldTableView.delegate = self
        worldTableView.dataSource = self
        worldTableView.backgroundColor = .clear
        worldTableView.rowHeight = 110
    }
    

}

extension WorldViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: WorldTableViewCell.identifier, for: indexPath) as! WorldTableViewCell
        
        cell.backgroundColor = .clear
        for label in cell.labelCollection {
            label.textColor = .white
        }
        
        return cell
    }
    
    
}
