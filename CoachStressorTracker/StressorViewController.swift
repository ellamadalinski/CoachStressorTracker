//
//  StressorViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 1/13/22.
//

import UIKit

class StressorViewController: UIViewController , UITextFieldDelegate{
    
    @IBOutlet weak var stressor1TextField: UITextField!
    @IBOutlet weak var stressor2TextField: UITextField!
    @IBOutlet weak var stressor3TextField: UITextField!
    @IBOutlet weak var stressor4TextField: UITextField!
    @IBOutlet weak var stressor5TextField: UITextField!
    @IBOutlet weak var mostStressedTextField: UITextField!
    @IBOutlet weak var alleviateTextField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        stressor1TextField.delegate = self
        stressor2TextField.delegate = self
        stressor3TextField.delegate = self
        stressor4TextField.delegate = self
        stressor5TextField.delegate = self
        mostStressedTextField.delegate = self
        alleviateTextField.delegate = self
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if stressor1TextField.isEditing{
            stressor1TextField.resignFirstResponder()
            stressor2TextField.becomeFirstResponder()
        }
        else if stressor2TextField.isEditing{
            stressor2TextField.resignFirstResponder()
            stressor3TextField.becomeFirstResponder()
        }
        else if stressor3TextField.isEditing{
            stressor3TextField.resignFirstResponder()
            stressor4TextField.becomeFirstResponder()
        }
        else if stressor4TextField.isEditing{
            stressor4TextField.resignFirstResponder()
            stressor5TextField.becomeFirstResponder()
        }
        else if stressor5TextField.isEditing{
            stressor5TextField.resignFirstResponder()
            mostStressedTextField.becomeFirstResponder()
        }
        else if mostStressedTextField.isEditing{
            mostStressedTextField.resignFirstResponder()
            alleviateTextField.becomeFirstResponder()
        }
        else{
            alleviateTextField.resignFirstResponder()
        }
        return true
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        
        if mostStressedTextField.isEditing || alleviateTextField.isEditing{
            if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                if self.view.frame.origin.y == 0 {
                    self.view.frame.origin.y -= keyboardSize.height
                }
            }
        }
    }

    @objc func keyboardWillHide(notification: NSNotification) {
        if mostStressedTextField.isEditing || alleviateTextField.isEditing{
            if self.view.frame.origin.y != 0 {
                self.view.frame.origin.y = 0
            }
        }
    }
    
    @IBAction func doneButtonAction(_ sender: UIButton) {
        if let s1 = stressor1TextField.text{
            TempVariables.stressor1 = s1
        }
        if let s2 = stressor2TextField.text{
            TempVariables.stressor2 = s2
        }
        if let s3 = stressor3TextField.text{
            TempVariables.stressor3 = s3
        }
        if let s4 = stressor4TextField.text{
            TempVariables.stressor4 = s4
        }
        if let s5 = stressor5TextField.text{
            TempVariables.stressor5 = s5
        }
        if let mostStressed = mostStressedTextField.text{
            TempVariables.mostStressed = mostStressed
        }
        if let alleviate = alleviateTextField.text{
            TempVariables.alleviate = alleviate
        }
        
        var survey = Survey(n: TempVariables.name, d: TempVariables.date, bm: TempVariables.beforeMood, e: TempVariables.expect, g: TempVariables.goal, begm: TempVariables.beginningMood, begs: TempVariables.beginningStressor, begg: TempVariables.beginningGoal, midm: TempVariables.middleMood, mids: TempVariables.middleStressor, midg: TempVariables.middleGoal, endm: TempVariables.endMood, ends: TempVariables.endStressor, endg: TempVariables.endGoal, am: TempVariables.afterMood, o: TempVariables.overall, h: TempVariables.happy, u: TempVariables.upset, s1: TempVariables.stressor1, s2: TempVariables.stressor2, s3: TempVariables.stressor3, s4: TempVariables.stressor4, s5: TempVariables.stressor5, ms: TempVariables.mostStressed, a: TempVariables.alleviate)
        Statics.surveyArray.insert(survey, at: 0)
        
        if stressor1TextField.text != ""{
            var stressor1 = Stressor(s: TempVariables.stressor1, d: TempVariables.date)
            Statics.stressorArray.insert(stressor1, at: 0)
            print("appending1")
        }
        if stressor2TextField.text != ""{
            var stressor2 = Stressor(s: TempVariables.stressor2, d: TempVariables.date)
            Statics.stressorArray.insert(stressor2, at: 0)
            print("appending2")
        }
        if stressor3TextField.text != ""{
            var stressor3 = Stressor(s: TempVariables.stressor3, d: TempVariables.date)
            Statics.stressorArray.insert(stressor3, at: 0)
            print("appending3")
        }
        if stressor4TextField.text != ""{
            var stressor4 = Stressor(s: TempVariables.stressor4, d: TempVariables.date)
            Statics.stressorArray.insert(stressor4, at: 0)
            print("appending4")
        }
        if stressor5TextField.text != ""{
            var stressor5 = Stressor(s: TempVariables.stressor5, d: TempVariables.date)
            Statics.stressorArray.insert(stressor5, at: 0)
            print("appending5")
        }
        
        TempVariables.name = ""
        TempVariables.date = Date()
        TempVariables.beforeMood = 0
        TempVariables.expect = ""
        TempVariables.goal = ""
        TempVariables.beginningMood = 0
        TempVariables.beginningStressor = ""
        TempVariables.beginningGoal = ""
        TempVariables.middleMood = 0
        TempVariables.middleStressor = ""
        TempVariables.middleGoal = ""
        TempVariables.endMood = 0
        TempVariables.endStressor = ""
        TempVariables.endGoal = ""
        TempVariables.afterMood = 0
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
        
        performSegue(withIdentifier: "doneSegue1", sender: self)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("disappearingFrom7th")
        if let s1 = stressor1TextField.text{
            TempVariables.stressor1 = s1
        }
        if let s2 = stressor2TextField.text{
            TempVariables.stressor2 = s2
        }
        if let s3 = stressor3TextField.text{
            TempVariables.stressor3 = s3
        }
        if let s4 = stressor4TextField.text{
            TempVariables.stressor4 = s4
        }
        if let s5 = stressor5TextField.text{
            TempVariables.stressor5 = s5
        }
        if let mostStressed = mostStressedTextField.text{
            TempVariables.mostStressed = mostStressed
        }
        if let alleviate = alleviateTextField.text{
            TempVariables.alleviate = alleviate
        }

    }
    
    override func viewWillAppear(_ animated: Bool) {
        stressor1TextField.text = TempVariables.stressor1
        stressor2TextField.text = TempVariables.stressor2
        stressor3TextField.text = TempVariables.stressor3
        stressor4TextField.text = TempVariables.stressor4
        stressor5TextField.text = TempVariables.stressor5
        mostStressedTextField.text = TempVariables.mostStressed
        alleviateTextField.text = TempVariables.alleviate
    }
    

}
