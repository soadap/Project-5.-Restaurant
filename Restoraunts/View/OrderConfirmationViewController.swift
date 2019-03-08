//
//  OrderConfirmationViewController.swift
//  Restoraunts
//
//  Created by soadap on 3/5/19.
//  Copyright © 2019 soadap. All rights reserved.
//

import UIKit

class OrderConfirmationViewController: UIViewController {

    @IBOutlet weak var timeRemainLabel: UILabel!
    
    var minutes : Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeRemainLabel.text = "Thank you for your order! Your waiting time is approximately \(minutes!) minutes!"
    }
    
    
}
