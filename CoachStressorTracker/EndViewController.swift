//
//  EndViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 1/28/22.
//

import UIKit

class EndViewController: UIViewController , UITextFieldDelegate{
    
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
        print("disappearingFrom5th")
        TempVariables.endMood = mood
        if let stressor = stressorTextField.text{
            TempVariables.endStressor = stressor
        }
        if let goal = goalTextField.text{
            TempVariables.endGoal = goal
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        mood = TempVariables.endMood
        moodNumberLabel.text = String(TempVariables.endMood)
        slider.value = Float(TempVariables.endMood)
        stressorTextField.text = TempVariables.endStressor
        goalTextField.text = TempVariables.endGoal
    }

    @IBAction func saveButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "saveForLater", sender: nil)
    }
    
    
}
