//
//  ViewController.swift
//  Prework
//
//  Created by Shivani on 8/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var numberOfPeople: UIStepper!
    @IBOutlet weak var perPerson: UILabel!
    @IBOutlet weak var displayNumberOfPeople: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
        tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
         
    }
    
    
    @IBAction func calculateSplit(_ sender: UIStepper) {
        displayNumberOfPeople.text = String(sender.value)
        
        let n = Double(sender.value)
        let x = Double(String((totalLabel.text!).dropFirst())) ?? 0
        let p = x / n
        
        perPerson.text = String(format: "$%.2f", p)
    }
    
}

