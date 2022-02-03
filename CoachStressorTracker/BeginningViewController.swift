//
//  BeginningViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 1/28/22.
//

import UIKit

class BeginningViewController: UIViewController {

    
    @IBOutlet weak var moodNumberLabelOutlet: UILabel!
    @IBOutlet weak var sliderOutlet: UISlider!
    
    var mood = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        mood = Int(slider.value)
//        moodNumberLabel.text = "\(mood)"
        // Do any additional setup after loading the view.
    }
    

    @IBAction func moodNumberChangedAction(_ sender: UISlider) {
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("disappearingFrom3rd")
    }
}
