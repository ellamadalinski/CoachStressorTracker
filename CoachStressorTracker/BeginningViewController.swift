//
//  BeginningViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 1/28/22.
//

import UIKit

class BeginningViewController: UIViewController {

    
    @IBOutlet weak var moodNumberLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stressorTextField: UITextField!
    @IBOutlet weak var goalTextField: UITextField!
    
    
    var mood = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mood = Int(slider.value)
        moodNumberLabel.text = "\(mood)"
        
    }
    
    
    @IBAction func moodNumberChangedAction(_ sender: UISlider) {
        mood = Int(slider.value)
        moodNumberLabel.text = "\(mood)"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("disappearingFrom3rd")
        TempVariables.beginningMood = mood
        if let stressor = stressorTextField.text{
            TempVariables.beginningStressor = stressor
        }
        if let goal = goalTextField.text{
            TempVariables.beginningGoal = goal
        }
    }
}
