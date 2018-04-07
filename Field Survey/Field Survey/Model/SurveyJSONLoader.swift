//
//  SurveyJSONLoader.swift
//  Field Survey
//
//  Created by Zach on 4/6/18.
//  Copyright © 2018 Mizzou. All rights reserved.
//

import Foundation

class SurveyJSONLoader
{

    class func load(fileName: String) -> [Survey]{
        var surveys = [Survey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
                surveys = SurveyJSONParser.parse(data)
            }
        
        return surveys
    }
}
