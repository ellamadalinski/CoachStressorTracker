//
//  AfterViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 1/13/22.
//

//HAVE MOOD NUMBER SET UP ON PRE BUT NOT POST

import UIKit

class AfterViewController: UIViewController , UITextFieldDelegate{
    
    @IBOutlet weak var moodNumberLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var overallTextField: UITextField!
    @IBOutlet weak var happyTextField: UITextField!
    @IBOutlet weak var upsetTextField: UITextField!
    
    
    var mood = 5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overallTextField.delegate = self
        happyTextField.delegate = self
        upsetTextField.delegate = self

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if overallTextField.isEditing{
            overallTextField.resignFirstResponder()
            happyTextField.becomeFirstResponder()
        }
        else if happyTextField.isEditing{
            happyTextField.resignFirstResponder()
            upsetTextField.becomeFirstResponder()
        }
        else{
            upsetTextField.resignFirstResponder()
        }
        return true
    }
    
    
    @IBAction func moodNumberChangedAction(_ sender: UISlider) {
        mood = Int(slider.value)
        moodNumberLabel.text = "\(mood)"
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        print("disappearingFrom6th")
        TempVariables.afterMood = mood
        if let overall = overallTextField.text{
            TempVariables.overall = overall
        }
        if let happy = happyTextField.text{
            TempVariables.happy = happy
        }
        if let upset = upsetTextField.text{
            TempVariables.upset = upset
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        moodNumberLabel.text = String(TempVariables.afterMood)
        slider.value = Float(TempVariables.afterMood)
        overallTextField.text = TempVariables.overall
        happyTextField.text = TempVariables.happy
        upsetTextField.text = TempVariables.upset
    }

}
