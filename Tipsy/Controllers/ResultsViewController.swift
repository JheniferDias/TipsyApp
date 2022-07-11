//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Jhenifer Dias on 27/06/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//
import Foundation
import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var totalCalculate = 0.0
    var selectedPercentage = 0.0
    var numberPeople = 0
    
//    var numberPeople = converted()
//    var percentage = getButtonPercentageValue()
//
    override func viewDidLoad() {
        super.viewDidLoad()
        
        populateData()
    }
    
    func populateData(){
        
        totalLabel.text = String(totalCalculate)
        settingsLabel.text = String("Slip betweem \(numberPeople) people, with \(selectedPercentage) tip. ")
    }

    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
