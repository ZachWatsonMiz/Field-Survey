//
//  SurveyDetailsViewController.swift
//  Field Survey
//
//  Created by Zach on 4/6/18.
//  Copyright © 2018 Mizzou. All rights reserved.
//

import UIKit

class SurveyDetailsViewController: UIViewController {

    var surveys: Survey?
    var dateFormatter = DateFormatter()
    
    @IBOutlet weak var surveyIconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium

        surveyIconImageView.image = surveys?.classification.image
        nameLabel.text = surveys?.title
        descriptionLabel.text = surveys?.description
        
        if let date = surveys?.date{
            dateLabel.text = dateFormatter.string(from: date)
        } else {
            dateLabel.text = ""
        }
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
