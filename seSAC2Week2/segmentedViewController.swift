//
//  segmentedViewController.swift
//  seSAC2Week2
//
//  Created by Brother Model on 2022/07/12.
//

import UIKit

enum MusicType: Int {
    case all = 0
    case korea = 1
    case other = 2
}

class segmentedViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentControlValueChanged(segmentControl)

    }
    
    @IBAction func segmentControlValueChanged(_ sender: Any) {
        if segmentControl.selectedSegmentIndex == MusicType.all.rawValue {
        } else if segmentControl.selectedSegmentIndex == MusicType.korea.rawValue  {
            
        }
        
        
//        if segmentControl.selectedSegmentIndex == 0 {
//            resultLabel.text = "첫번째 세그먼트"
//        } else if segmentControl.selectedSegmentIndex == 1 {
//            resultLabel.text = "두번째 세그먼트"
//        } else if segmentControl.selectedSegmentIndex == 2 {
//            resultLabel.text = "세번째 세그먼트"
//        } else {
//            resultLabel.text = "오류"
//        }

    }
    
    
}
