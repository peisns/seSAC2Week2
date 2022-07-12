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
    
    enum SmileCount: Int {
        case zero = 0
        case one
        case three = 3
        case five = 5
        case moreNine = 9
    }
    @IBOutlet weak var smileLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        smileLabel.numberOfLines = 0
    }

    @IBAction func firstClicked(_ sender: UIButton) {
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
    }
    
    @IBAction func changeSmileSegment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0 :
            smileLabel.text = "당장 지구오락실 보러 갑시다!"
        case 1 :
            smileLabel.text = "\(SmileCount.one.rawValue)번이라도 웃는 당신이 좋아요"
        case 2 :
            smileLabel.text = "\(SmileCount.three.rawValue)번. 아침, 점심, 저녁~?"
        case 3 :
            smileLabel.text = "\(SmileCount.five.rawValue)번 웃었어요? 꽤 웃었네요!? :)"
        case 4 :
            smileLabel.text = "\(SmileCount.moreNine.rawValue)번이라니! 웃음을 나눠주세요!!"
        default:
            smileLabel.text = "에러 발생"
        }
    }
    
}
    
