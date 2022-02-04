//
//  ViewController.swift
//  prework
//
//  Created by Matteen on 2/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTexField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calulateTips(_ sender: Any) {
     // Get bill amount from text field input
    let bill = Double(billAmountTexField.text!) ?? 0
        
    // Get Total tip by multiplying tip * tipPercentage
    let tipPercentages = [0.15, 0.18, 0.2]
    let tip = bill *
        tipPercentages[tipControl.selectedSegmentIndex]
    let total = bill + tip
        
    // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip )
    // Update Total Amount
    totalLabel.text = String(format: "$%.2f" , total)
        
        
        
    }
 
    
    
    
    
}
