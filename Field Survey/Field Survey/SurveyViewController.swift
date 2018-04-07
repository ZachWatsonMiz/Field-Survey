//
//  SurveyViewController.swift
//  Field Survey
//
//  Created by Zach on 4/6/18.
//  Copyright © 2018 Mizzou. All rights reserved.
//

import UIKit

class SurveyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var surveyTableView: UITableView!
    let surveyObservations = SurveyJSONLoader.load(fileName: "field_observations")
    
    let dateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return surveyObservations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "surveyCell", for: indexPath)
        
        if let cell = cell as? SurveyTableViewCell {
            let surveyName = surveyObservations[indexPath.row]
            cell.surveyIconImageView.image = surveyName.classification.image
            cell.nameLabel.text = surveyName.title
            cell.dateLabel.text = dateFormatter.string(from: surveyName.date)
        }
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SurveyDetailsViewController,
        let row = surveyTableView.indexPathForSelectedRow?.row {
            
            destination.surveys = surveyObservations[row]
        }
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
