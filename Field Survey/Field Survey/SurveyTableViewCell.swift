//
//  SurveyTableViewCell.swift
//  Field Survey
//
//  Created by Zach on 4/6/18.
//  Copyright © 2018 Mizzou. All rights reserved.
//

import UIKit

class SurveyTableViewCell: UITableViewCell {
 
    @IBOutlet weak var surveyIconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
