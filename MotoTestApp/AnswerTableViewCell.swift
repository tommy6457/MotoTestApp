//
//  AnswerTableViewCell.swift
//  MotoTestApp
//
//  Created by 蔡尚諺 on 2021/12/21.
//

import UIKit

class AnswerTableViewCell: UITableViewCell {

    @IBOutlet weak var answerTextView: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        self.layer.cornerRadius = self.bounds.width / 20

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
