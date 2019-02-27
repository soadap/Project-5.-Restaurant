//
//  IntermediaryModels.swift
//  Restoraunts
//
//  Created by soadap on 2/21/19.
//  Copyright © 2019 soadap. All rights reserved.
//

import Foundation

struct Categories : Codable {
    let categories : [String]
}

struct PreparationTime : Codable {
    let prepTime : Int
    
    enum CodingKeys : String, CodingKey {
        case prepTime = "preparation_time"
    }
}
