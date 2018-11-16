//
//  YellowViewController.swift
//  CommonInputControls
//
//  Created by Steve on 11/15/18.
//  Copyright © 2018 SteveAndTheDogs. All rights reserved.
//

import UIKit
import os.log

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("YellowViewController. viewDidLoad()", log: OSLog.default, type: .info)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    // MARK: Lifecycle stuff
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        os_log("YellowViewController. viewWillAppear(...)", log: OSLog.default, type: .info)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        os_log("YellowViewController. viewDidAppear(...)", log: OSLog.default, type: .info)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        os_log("YellowViewController. viewWillDisappear(...)", log: OSLog.default, type: .info)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        os_log("YellowViewController. viewDidDisappear(...)", log: OSLog.default, type: .info)
    }

}
