//
//  ResponseViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 2/9/22.
//

import UIKit

class ResponseViewController: UIViewController {
    

    @IBOutlet weak var surveyName: UILabel!
    @IBOutlet weak var surveyDate: UILabel!
    @IBOutlet weak var beforeMood: UILabel!
    @IBOutlet weak var beforeExpecting: UITextView!
    @IBOutlet weak var beforeGoal: UITextView!
    @IBOutlet weak var begMood: UILabel!
    @IBOutlet weak var begStressor: UITextView!
    @IBOutlet weak var begAchieve: UITextView!
    @IBOutlet weak var midMood: UILabel!
    @IBOutlet weak var midStressor: UITextView!
    @IBOutlet weak var midAchieve: UITextView!
    @IBOutlet weak var endMood: UILabel!
    @IBOutlet weak var endStressor: UITextView!
    @IBOutlet weak var endAchieve: UITextView!
    @IBOutlet weak var afterMood: UILabel!
    @IBOutlet weak var afterOverall: UITextView!
    @IBOutlet weak var afterHappy: UITextView!
    @IBOutlet weak var afterUpset: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = TempVariables.date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM.dd.yyyy"
        let result = dateFormatter.string(from: date)
        
        surveyName.text! += TempVariables.name
        surveyDate.text! += result
        beforeMood.text! += String(TempVariables.beforeMood)
        beforeExpecting.text! += TempVariables.expect
        beforeGoal.text! += TempVariables.goal
        begMood.text! += String(TempVariables.beginningMood)
        begStressor.text! += TempVariables.beginningStressor
        begAchieve.text! += TempVariables.beginningGoal
        midMood.text! += String(TempVariables.middleMood)
        midStressor.text! += TempVariables.middleStressor
        midAchieve.text! += TempVariables.middleGoal
        endMood.text! += String(TempVariables.endMood)
        endStressor.text! += TempVariables.endStressor
        endAchieve.text! += TempVariables.endGoal
        afterMood.text! += String(TempVariables.afterMood)
        afterOverall.text! += TempVariables.overall
        afterHappy.text! += TempVariables.happy
        afterUpset.text! += TempVariables.upset
        
    }
    
    
    @IBAction func nextButtonAction(_ sender: UIButton) {
        print("hi")
        performSegue(withIdentifier: "responseToStressors", sender: nil)
    }
    
}
