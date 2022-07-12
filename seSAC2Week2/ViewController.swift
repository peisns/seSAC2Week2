//
//  ViewController.swift
//  seSAC2Week2
//
//  Created by Brother Model on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelCollection: [UILabel]!
    
    var emotionArray:Array<Int> = [0,0,0,0,0,0,0,0,0]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func firstClicked(_ sender: UIButton) {
        print(sender.tag)
        emotionArray[sender.tag] += 1
        labelCollection[0].text = "행복해 \(emotionArray[0])"
        labelCollection[1].text = "사랑해 \(emotionArray[1])"
        labelCollection[2].text = "좋아해 \(emotionArray[2])"
        labelCollection[3].text = "당황해 \(emotionArray[3])"
        labelCollection[4].text = "속상해 \(emotionArray[4])"
        labelCollection[5].text = "우울해 \(emotionArray[5])"
        labelCollection[6].text = "심심해 \(emotionArray[6])"
        labelCollection[7].text = "행복해 \(emotionArray[7])"
        labelCollection[8].text = "행복해 \(emotionArray[8])"
//        showAlertController()
    }
    
//    func showAlertController() {
//        //1. 흰바탕 UIAlertController
//        let alert = UIAlertController(title: "타이틀", message: "메시지", preferredStyle:.alert)
//        //2. 버튼
//        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
//        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
//        let web = UIAlertAction(title: "새 창으로 열기", style: .default, handler: nil)
//        let copy = UIAlertAction(title: "복사", style: .default, handler: nil)
//
////        alert.addAction(copy)
//        alert.addAction(web)
//        alert.addAction(cancel)
//        alert.addAction(ok)
//
//        present(alert, animated: true, completion: nil)
//    }
}
    
