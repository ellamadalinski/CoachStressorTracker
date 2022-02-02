//
//  StressorViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 1/13/22.
//

import UIKit

class StressorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "doneSegue", sender: nil)
    }
    
    

}
