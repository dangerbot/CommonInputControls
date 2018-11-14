//
//  ViewController.swift
//  CommonInputControls
//
//  Created by Steve on 11/12/18.
//  Copyright © 2018 SteveAndTheDogs. All rights reserved.
//

import UIKit
import os.log

class ViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var mySlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("ViewController. viewDidLoad()", log: OSLog.default, type: .info)
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func myButtonWasTapped(_ sender: Any) {
        os_log("ViewController. myButtonWasTapped()", log: OSLog.default, type: .info)
        print(sender)
        if mySwitch.isOn {
            print("Switch: ON")
        } else {
            print("Switch: OFF")
        }
        print("Slider Value: \(mySlider.value)")
    }
    
    @IBAction func mySwitchWasToggled(_ sender: UISwitch) {
        os_log("ViewController. mySwitchWasToggled()", log: OSLog.default, type: .info)
        print(sender)
        if (sender as AnyObject).isOn {
            print("The switch is on")
        } else {
            print("The switch is off")
        }
    }

    @IBAction func mySliderValueChanged(_ sender: UISlider) {
        os_log("ViewController. mySliderValueChanged()", log: OSLog.default, type: .info)
        print(sender.value)
    }
    
    @IBAction func textFieldReturnKeyTapped(_ sender: UITextField) {
        os_log("ViewController. textFieldReturnKeyTapped()", log: OSLog.default, type: .info)
        if let text = sender.text { print(text) }
    }
    
    @IBAction func myRespondToTapGesture(_ sender: UITapGestureRecognizer) {
        os_log("ViewController. textFieldReturnKeyTapped()", log: OSLog.default, type: .info)
        let location = sender.location(in: view)
        print(location)
    }
    
} // END class ViewController

