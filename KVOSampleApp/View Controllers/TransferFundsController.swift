//
//  TransferFundsController.swift
//  KVOSampleApp
//
//  Created by Alex Paul on 2/17/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit

class TransferFundsController: UIViewController { 

    @IBOutlet weak var transferAmountLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        setupStepper()
    }
    
    private func setupStepper() {
        stepper.minimumValue = 0
        stepper.maximumValue = 1000
        stepper.stepValue = 20
        stepper.value = 0
        transferAmountLabel.text = "$0"
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        transferAmountLabel.text = "$\(Int(sender.value))"
    }
    
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { alert in
            self.tabBarController?.selectedIndex = 0
        }
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func transferFunds(_ sender: UIButton) {
        // TODO: complete implementation
    }
    
}

