//
//  MiddleViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 1/28/22.
//

import UIKit

class MiddleViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var saveOutlet: UIButton!
    @IBOutlet weak var nextOutlet: UIButton!
    @IBOutlet weak var moodNumberLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var stressorTextField: UITextField!
    @IBOutlet weak var goalTextField: UITextField!
    
    
    var mood = 5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stressorTextField.delegate = self
        goalTextField.delegate = self
        
        saveOutlet.tintColor = UIColor.black
        nextOutlet.tintColor = UIColor.black
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
    
    @IBAction func saveButtonAction(_ sender: UIButton) {
        TempVariables.middleMood = mood
        if let stressor = stressorTextField.text{
            TempVariables.middleStressor = stressor
        }
        if let goal = goalTextField.text{
            TempVariables.middleGoal = goal
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
