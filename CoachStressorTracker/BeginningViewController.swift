//
//  BeginningViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 1/28/22.
//

import UIKit

class BeginningViewController: UIViewController , UITextFieldDelegate {

    
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
        print("disappearingFrom3rd")
        TempVariables.beginningMood = mood
        if let stressor = stressorTextField.text{
            TempVariables.beginningStressor = stressor
        }
        if let goal = goalTextField.text{
            TempVariables.beginningGoal = goal
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        mood = TempVariables.beginningMood
        moodNumberLabel.text = String(TempVariables.beginningMood)
        slider.value = Float(TempVariables.beginningMood)
        stressorTextField.text = TempVariables.beginningStressor
        goalTextField.text = TempVariables.beginningGoal
    }
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "saveForLater", sender: nil)
    }
    
    
}
