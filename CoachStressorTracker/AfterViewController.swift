//
//  AfterViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 1/13/22.
//

//HAVE MOOD NUMBER SET UP ON PRE BUT NOT POST

import UIKit

class AfterViewController: UIViewController {
    
    @IBOutlet weak var moodNumberLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var overallTextField: UITextField!
    @IBOutlet weak var happyTextField: UITextField!
    @IBOutlet weak var upsetTextField: UITextField!
    
    
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

}
