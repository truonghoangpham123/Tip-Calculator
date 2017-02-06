//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Mac-ninjaKID on 2/6/17.
//  Copyright © 2017 Mac-KobePham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hillField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        self.view.endEditing(true)
    }
    @IBAction func calculatorTip(_ sender: Any) {
        let tipPercentages = [0.18, 0.2, 0.25]
        let hill = Double(hillField.text!) ?? 0
        print(tipControl.selectedSegmentIndex)
        let tip = hill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = hill + tip
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    

}

