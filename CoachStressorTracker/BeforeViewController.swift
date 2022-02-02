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
    
    @IBAction func unwind(_ seg : UIStoryboardSegue){
        moodNumberLabel.text = "Hi"
        performSegue(withIdentifier: "doneSegue", sender: nil)
    }
    
    

}
