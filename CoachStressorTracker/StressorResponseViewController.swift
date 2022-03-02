//
//  StressorResponseViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 2/10/22.
//

import UIKit

class StressorResponseViewController: UIViewController {
    
    @IBOutlet weak var nameOutlet: UILabel!
    @IBOutlet weak var dateOutlet: UILabel!
    @IBOutlet weak var stressorOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = TempVariables.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM.dd.yyyy"
        let result = dateFormatter.string(from: date)
        
        nameOutlet.text = TempVariables.name
        dateOutlet.text = result
        stressorOutlet.text = "Stressor 1: \(TempVariables.stressor1)\nStressor 2: \(TempVariables.stressor2)\nStressor 3: \(TempVariables.stressor3)\nStressor 4: \(TempVariables.stressor4)\nStressor 5: \(TempVariables.stressor5)\n\nThe time at which you felt most stressed and what you were doing during that time: \(TempVariables.mostStressed)\n\nWhat you could do to alleviate this stress next time: \(TempVariables.alleviate)"
        
    }
    
    
    @IBAction func doneButtonAction(_ sender: UIButton) {
    performSegue(withIdentifier: "stressorDoneSegue", sender: nil)
    }
    
}
