//
//  StressorViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 1/13/22.
//

import UIKit

class StressorViewController: UIViewController {
    
    @IBOutlet weak var stressor1TextField: UITextField!
    @IBOutlet weak var stressor2TextField: UITextField!
    @IBOutlet weak var stressor3TextField: UITextField!
    @IBOutlet weak var stressor4TextField: UITextField!
    @IBOutlet weak var stressor5TextField: UITextField!
    @IBOutlet weak var mostStressedTextField: UITextField!
    @IBOutlet weak var alleviateTextField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func doneButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "doneSegue1", sender: self)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("disappearingFrom7th")
        if let s1 = stressor1TextField.text{
            TempVariables.stressor1 = s1
        }
        if let s2 = stressor2TextField.text{
            TempVariables.stressor2 = s2
        }
        if let s3 = stressor3TextField.text{
            TempVariables.stressor3 = s3
        }
        if let s4 = stressor4TextField.text{
            TempVariables.stressor4 = s4
        }
        if let s5 = stressor5TextField.text{
            TempVariables.stressor5 = s5
        }
        if let mostStressed = mostStressedTextField.text{
            TempVariables.mostStressed = mostStressed
        }
        if let alleviate = alleviateTextField.text{
            TempVariables.alleviate = alleviate
        }
        
    }

}
