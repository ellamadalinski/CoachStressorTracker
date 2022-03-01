//
//  StressorResponseViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 2/10/22.
//

import UIKit

class StressorResponseViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    
    
    @IBAction func doneButtonAction(_ sender: UIButton) {
    performSegue(withIdentifier: "stressorDoneSegue", sender: nil)
    }
    
}
