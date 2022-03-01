//
//  ResponseViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 2/9/22.
//

import UIKit

class ResponseViewController: UIViewController {
    
    @IBOutlet weak var nameOutlet: UILabel!
    @IBOutlet weak var dateOutlet: UILabel!
    @IBOutlet weak var beforeOutlet: UITextView!
    @IBOutlet weak var beginningOutlet: UITextView!
    @IBOutlet weak var middleOutlet: UITextView!
    @IBOutlet weak var endOutlet: UITextView!
    @IBOutlet weak var afterOutlet: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = TempVariables.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM.dd.yyyy"
        let result = dateFormatter.string(from: date)
        
        nameOutlet.text = TempVariables.name
        dateOutlet.text = result
        beforeOutlet.text = "Mood: \(String(TempVariables.beforeMood))\n\nHow you were expecting the practice to go: \(TempVariables.expect)\n\nGoal you made for yourself and/or the team: \(TempVariables.goal)"
        beginningOutlet.text = "Mood: \(String(TempVariables.beginningMood))\n\nYour greatest stressor in this portion of practice: \(TempVariables.beginningStressor)\n\nWhat was being done to achieve the goal and how this is working: \(TempVariables.beginningGoal)"
        middleOutlet.text = "Mood: \(String(TempVariables.middleMood))\n\nYour greatest stressor in this portion of practice: \(TempVariables.middleStressor)\n\nWhat was being done to achieve the goal and how this is working: \(TempVariables.middleGoal)"
        endOutlet.text = "Mood: \(String(TempVariables.endMood))\n\nYour greatest stressor in this portion of practice: \(TempVariables.endStressor)\n\nWhat was being done to achieve the goal and how this is working: \(TempVariables.endGoal)"
        afterOutlet.text = "Mood: \(String(TempVariables.afterMood))\n\nHow the practice went overall: \(TempVariables.overall)\n\nSomething that made you happy: \(TempVariables.happy)\n\nSomething that upset you: \(TempVariables.upset)"
        
        
        
    }
    
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "responseToStressors", sender: nil)
    }
    
}
