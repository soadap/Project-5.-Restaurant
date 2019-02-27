//
//  Order.swift
//  Restoraunts
//
//  Created by soadap on 2/21/19.
//  Copyright © 2019 soadap. All rights reserved.
//

import Foundation

struct Order : Codable {
    var menuItems : [MenuItem]
    
    init(menuItems : [MenuItem] = []) {
        self.menuItems = menuItems
    }
}

