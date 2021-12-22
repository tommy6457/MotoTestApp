//
//  ResultViewController.swift
//  MotoTestApp
//
//  Created by 蔡尚諺 on 2021/12/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    var point: Int!   //總分
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let point = point {
            scoreLabel.text = "\(point)分\n"
            var message = ""
            
            if point == 100 {
                message = "太棒了！"
            }else if point >= 80 {
                message = "還可以啦～"
            }else{
                scoreLabel.textColor = UIColor.red
                message = "再接再厲。"
            }
            
            let alert = UIAlertController(title: "提醒", message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
