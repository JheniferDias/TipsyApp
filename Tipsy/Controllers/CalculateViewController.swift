//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    
    
    //MARK: -  @IBOutlets
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    
    var selectedPercentage = 0
    var calculatorTotal = CalculatorTotal()
    var total = 0.0
    var people = 0.0
    
    
    // MARK: - @IBActions
    
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        billTextField.endEditing(false)
        
        //        let buttonTitle = sender.currentTitle!
        //        let buttonTitleMinusPercentSign =  String(buttonTitle.dropLast())
        //        let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
        
        //        tip = buttonTitleAsANumber / 10
        
    }
    
    @IBAction func steppedValueChanged(_ sender: UIStepper) {
        
        splitNumberLabel.text = Int(sender.value).description
        
    }
    
    func getButtonPercentageValue() -> Double{
        
        if zeroPctButton.isSelected{
            return 0
        } else if tenPctButton.isSelected{
            return 10
        } else {
            return 20
        }
    }
    
    
    
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        guard let safeBillText = billTextField.text else { return }
        guard let safeChoose = splitNumberLabel.text else { return }
        
        
        guard let safeBillConverted = Double(safeBillText) else { return }
        guard let safeChooseConverted = Double(safeChoose) else { return }
        people = safeChooseConverted
        
        let calculate = (safeBillConverted * getButtonPercentageValue()/100)
        total = (calculate + safeBillConverted) / safeChooseConverted
        
        
        self.performSegue(withIdentifier: "nextScreen", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "nextScreen" {
            let destinationaVC = segue.destination as! ResultsViewController
            destinationaVC.totalCalculate = total
            destinationaVC.selectedPercentage = getButtonPercentageValue()
            destinationaVC.numberPeople = Int(people)
        }
    }
}

extension CalculateViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string == ","{
            textField.text = textField.text! + "."
            return false
        }
        return true
    }
}

