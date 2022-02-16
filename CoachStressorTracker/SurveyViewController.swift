//
//  SurveyViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 1/11/22.
//

import UIKit

class SurveyViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameOutlet: UITextField!
    @IBOutlet weak var datePickerOutlet: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameOutlet.delegate = self

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nameOutlet.resignFirstResponder()
        return true
    }
    
    @IBAction func unwind(_ seg : UIStoryboardSegue){
        nameOutlet.text = ""
        datePickerOutlet.date = Date.now
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("disappearingFrom1st")
        if let name = nameOutlet.text{
            TempVariables.name = name
        }
        
        TempVariables.date = datePickerOutlet.date
        
    }
    
    
    
}
