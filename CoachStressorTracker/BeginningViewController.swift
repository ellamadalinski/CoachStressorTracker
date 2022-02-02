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
    
//    @IBAction func unwind(_ seg : UIStoryboardSegue){
//        performSegue(withIdentifier: "doneSegue1", sender: nil)
//    }

}
