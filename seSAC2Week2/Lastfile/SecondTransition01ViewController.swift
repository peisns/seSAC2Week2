//
//  SecondTransition01ViewController.swift
//  seSAC2Week2
//
//  Created by Brother Model on 2022/07/15.
//

import UIKit

class SecondTransition01ViewController: UIViewController {

    @IBOutlet weak var mottoTextView: UITextView!
    
    /*
     1. 앱 켜면 데이터 가지고 와서 텍스트뷰에 보여주자
     2. 바뀐 데이터 다시 저장해주자
     => UserDefault
     */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
        
        if UserDefaults.standard.string(forKey: "nickname") != nil {
            //가지고 와야함
            mottoTextView.text = UserDefaults.standard.string(forKey: "nickname")
        } else {
            mottoTextView.text = "고래밥"
        }
        
       
    }
 
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#function)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    }
    
    
    @IBAction func saveButtonClicked(_ sender: UIButton) {
        UserDefaults.standard.set(mottoTextView.text, forKey: "nickname")
        print("저장완료")
    }
    
    @IBAction func unwindTransitionFirstVc(jackSegue: UIStoryboardSegue) {
        
    }
}
