//
//  OrangeViewController.swift
//  CommonInputControls
//
//  Created by Steve on 11/15/18.
//  Copyright © 2018 SteveAndTheDogs. All rights reserved.
//

import Foundation
import UIKit
import os.log

class PinkViewController: UIViewController {

    @IBOutlet weak var pinkLabelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("PinkViewController. viewDidLoad()", log: OSLog.default, type: .info)
    }
    
} // END class
