//
//  BeforeViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 1/13/22.
//

import UIKit

class BeforeViewController: UIViewController {
    

    @IBOutlet weak var moodNumberLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var expectingTextField: UITextField!
    @IBOutlet weak var goalTextField: UITextField!
    
    var mood = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.tintColor = UIColor.black
        
        mood = Int(slider.value)
        moodNumberLabel.text = "\(mood)"
        
    }
    

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        mood = Int(slider.value)
        moodNumberLabel.text = "\(mood)"
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        print("disappearingFrom2nd")
        
        TempVariables.beforeMood = mood
        
        if let expect = expectingTextField.text{
            TempVariables.expect = expect
        }
        
        if let goal = goalTextField.text{
            TempVariables.goal = goal
        }
        
    }
    

}
