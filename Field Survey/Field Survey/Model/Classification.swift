//
//  Classification.swift
//  Field Survey
//
//  Created by Zach on 4/6/18.
//  Copyright © 2018 Mizzou. All rights reserved.
//

import UIKit

enum Classification: String {
    case amphibian
    case reptile
    case plant
    case bird
    case insect
    case fish
    case mammal
    
    var image: UIImage?{
        return UIImage(named: self.rawValue + "Icon")
    }
}
