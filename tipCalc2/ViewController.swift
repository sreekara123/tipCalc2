//
//  ViewController.swift
//  tipCalc2
//
//  Created by Sreekara Yachamaneni on 1/20/20.
//  Copyright © 2020 Sreekara Yachamaneni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        var x = defaults.string(forKey: "tipPercentage1") ?? String(tipControl.titleForSegment(at: 0)!)
        tipControl.setTitle(x, forSegmentAt: 0)
        
        
        
        x = defaults.string(forKey: "tipPercentage2") ?? String(tipControl.titleForSegment(at: 1)!)
        tipControl.setTitle(x, forSegmentAt: 1)
        
        x = defaults.string(forKey: "tipPercentage3") ?? String(tipControl.titleForSegment(at: 2)!)
        tipControl.setTitle(x, forSegmentAt: 2)
        tipControl.selectedSegmentIndex = (tipControl.selectedSegmentIndex+1) % 2
    }
    
    

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill * AppDelegate.tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

