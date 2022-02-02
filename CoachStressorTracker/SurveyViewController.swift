//
//  SurveyViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 1/11/22.
//

import UIKit

class SurveyViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    @IBOutlet weak var datePickerOutlet: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func unwind(_ seg : UIStoryboardSegue){
        nameOutlet.text = ""
    }

    @IBAction func nextButtonAction(_ sender: UIButton) {
    }
    
    
}
