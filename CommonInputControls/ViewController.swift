//
//  OrangeViewController.swift
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
    @IBOutlet weak var frontTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        os_log("OrangeViewController. viewDidLoad()", log: OSLog.default, type: .info)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
        os_log("OrangeViewController. unwindToRed(...)", log: OSLog.default, type: .info)
    }

    @IBAction func myButtonWasTapped(_ sender: Any) {
        os_log("OrangeViewController. myButtonWasTapped()", log: OSLog.default, type: .info)
        print(sender)
        if mySwitch.isOn {
            print("Switch: ON")
        } else {
            print("Switch: OFF")
        }
        print("Slider Value: \(mySlider.value)")
    }
    
    @IBAction func pinkButtonTapped(_ sender: UIButton) {
        os_log("OrangeViewController. pinkButtonTapped()", log: OSLog.default, type: .info)
        if mySwitch.isOn {
            performSegue(withIdentifier: "PinkSegue", sender: nil)
        }
    }
    
    @IBAction func greyButtonTapped(_ sender: Any) {
        os_log("OrangeViewController. pinkButtonTapped()", log: OSLog.default, type: .info)
        if mySwitch.isOn {
            performSegue(withIdentifier: "GreySegue", sender: nil)
        }
    }
    
    
    @IBAction func mySwitchWasToggled(_ sender: UISwitch) {
        os_log("OrangeViewController. mySwitchWasToggled()", log: OSLog.default, type: .info)
        print(sender)
        if (sender as AnyObject).isOn {
            print("The switch is on")
        } else {
            print("The switch is off")
        }
    }

    @IBAction func mySliderValueChanged(_ sender: UISlider) {
        os_log("OrangeViewController. mySliderValueChanged()", log: OSLog.default, type: .info)
        print(sender.value)
    }
    
    @IBAction func textFieldReturnKeyTapped(_ sender: UITextField) {
        os_log("OrangeViewController. textFieldReturnKeyTapped()", log: OSLog.default, type: .info)
        if let text = sender.text { print(text) }
    }
    
    @IBAction func myRespondToTapGesture(_ sender: UITapGestureRecognizer) {
        os_log("OrangeViewController. textFieldReturnKeyTapped()", log: OSLog.default, type: .info)
        let location = sender.location(in: view)
        print(location)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        os_log("OrangeViewController. prepare(UIStoryboardSegue)", log: OSLog.default, type: .info)
        segue.destination.navigationItem.title = frontTextField.text
        // segue.destination.pinkLabelText
    }
    
    
} // END class ViewController

