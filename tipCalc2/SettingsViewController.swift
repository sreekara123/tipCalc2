//
//  SettingsViewController.swift
//  tipCalc2
//
//  Created by Sreekara Yachamaneni on 1/20/20.
//  Copyright © 2020 Sreekara Yachamaneni. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipPercentage1: UITextField!
    
    
    @IBOutlet weak var tipPercentage2: UITextField!
    
    @IBOutlet weak var tipPercentage3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeButtonClicked(_ sender: Any) {
        let defaults = UserDefaults.standard
        if tipPercentage1.text != "" && tipPercentage1.text != nil {
            defaults.set((tipPercentage1.text! + "%"), forKey: "tipPercentage1")
            AppDelegate.tipPercentages[0] = Double(tipPercentage1.text!)!/100
        }
        
        if tipPercentage2.text != "" && tipPercentage2.text != nil {
            defaults.set((tipPercentage2.text! + "%"), forKey: "tipPercentage2")
            AppDelegate.tipPercentages[1] = Double(tipPercentage2.text!)!/100
        }
        
        if tipPercentage3.text != "" && tipPercentage3.text != nil {
            defaults.set((tipPercentage3.text! + "%"), forKey: "tipPercentage3")
            AppDelegate.tipPercentages[2] = Double(tipPercentage3.text!)!/100
        }
        
        defaults.synchronize()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
