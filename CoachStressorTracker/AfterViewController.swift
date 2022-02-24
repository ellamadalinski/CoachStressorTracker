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
        mood = TempVariables.afterMood
        moodNumberLabel.text = String(TempVariables.afterMood)
        slider.value = Float(TempVariables.afterMood)
        overallTextField.text = TempVariables.overall
        happyTextField.text = TempVariables.happy
        upsetTextField.text = TempVariables.upset
    }
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
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
        
        var survey = Survey(n: TempVariables.name, d: TempVariables.date, bm: TempVariables.beforeMood, e: TempVariables.expect, g: TempVariables.goal, begm: TempVariables.beginningMood, begs: TempVariables.beginningStressor, begg: TempVariables.beginningGoal, midm: TempVariables.middleMood, mids: TempVariables.middleStressor, midg: TempVariables.middleGoal, endm: TempVariables.endMood, ends: TempVariables.endStressor, endg: TempVariables.endGoal, am: TempVariables.afterMood, o: TempVariables.overall, h: TempVariables.happy, u: TempVariables.upset, s1: TempVariables.stressor1, s2: TempVariables.stressor2, s3: TempVariables.stressor3, s4: TempVariables.stressor4, s5: TempVariables.stressor5, ms: TempVariables.mostStressed, a: TempVariables.alleviate)
        
        Statics.surveyArray.append(survey)
        
        TempVariables.name = ""
        TempVariables.date = Date()
        TempVariables.beforeMood = 5
        TempVariables.expect = ""
        TempVariables.goal = ""
        TempVariables.beginningMood = 5
        TempVariables.beginningStressor = ""
        TempVariables.beginningGoal = ""
        TempVariables.middleMood = 5
        TempVariables.middleStressor = ""
        TempVariables.middleGoal = ""
        TempVariables.endMood = 5
        TempVariables.endStressor = ""
        TempVariables.endGoal = ""
        TempVariables.afterMood = 5
        TempVariables.overall = ""
        TempVariables.happy = ""
        TempVariables.upset = ""
        TempVariables.stressor1 = ""
        TempVariables.stressor2 = ""
        TempVariables.stressor3 = ""
        TempVariables.stressor4 = ""
        TempVariables.stressor5 = ""
        TempVariables.mostStressed = ""
        TempVariables.alleviate = ""
        
        performSegue(withIdentifier: "saveForLater", sender: nil)
    }
    

}
