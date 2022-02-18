//
//  MiddleViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 1/28/22.
//

import UIKit

class MiddleViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var moodNumberLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stressorTextField: UITextField!
    @IBOutlet weak var goalTextField: UITextField!
    
    
    var mood = 5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stressorTextField.delegate = self
        goalTextField.delegate = self
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if stressorTextField.isEditing{
            stressorTextField.resignFirstResponder()
            goalTextField.becomeFirstResponder()
        }
        else{
            goalTextField.resignFirstResponder()
        }
        return true
    }

    @IBAction func moodNumberChangedAction(_ sender: UISlider) {
        mood = Int(slider.value)
        moodNumberLabel.text = "\(mood)"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("disappearingFrom4th")
        TempVariables.middleMood = mood
        if let stressor = stressorTextField.text{
            TempVariables.middleStressor = stressor
        }
        if let goal = goalTextField.text{
            TempVariables.middleGoal = goal
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        mood = TempVariables.middleMood
        moodNumberLabel.text = String(TempVariables.middleMood)
        slider.value = Float(TempVariables.middleMood)
        stressorTextField.text = TempVariables.middleStressor
        goalTextField.text = TempVariables.middleGoal
    }
    
}
