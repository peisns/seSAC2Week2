//
//  segmentedViewController.swift
//  seSAC2Week2
//
//  Created by Brother Model on 2022/07/12.
//

import UIKit



class SecondViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    @IBOutlet var dDayImageLabelCollection: [UIView]!
    
    @IBOutlet var dDayLabelCollection: [UILabel]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if #available(iOS 14, *) {
            datePicker.preferredDatePickerStyle = .inline
        } else if #available(iOS 13.4, *) {
            datePicker.preferredDatePickerStyle = .wheels
        }
        
        for i in dDayImageLabelCollection {
            i.layer.cornerRadius = 20
        }
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.timeZone = .autoupdatingCurrent
        dateFormatter.locale = Locale(identifier: "ko-KR")
        dateFormatter.dateFormat = "YYYY년\nMM월 dd일"
        
        var userSelectedDate = datePicker.date
        
        for label in dDayLabelCollection {
            label.text = dateFormatter.string(from: userSelectedDate)
            userSelectedDate = userSelectedDate.addingTimeInterval(60*60*24*100)
        }
    }
    
}
