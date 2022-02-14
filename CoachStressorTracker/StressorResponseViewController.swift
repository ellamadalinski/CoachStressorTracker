//
//  StressorResponseViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 2/10/22.
//

import UIKit

class StressorResponseViewController: UIViewController {

    @IBOutlet weak var stressor1: UITextView!
    @IBOutlet weak var stressor2: UITextView!
    @IBOutlet weak var stressor3: UITextView!
    @IBOutlet weak var stressor4: UITextView!
    @IBOutlet weak var stressor5: UITextView!
    @IBOutlet weak var mostStressed: UITextView!
    @IBOutlet weak var alleviate: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        stressor1.text! += TempVariables.stressor1
        stressor2.text! += TempVariables.stressor2
        stressor3.text! += TempVariables.stressor3
        stressor4.text! += TempVariables.stressor4
        stressor4.text! += TempVariables.stressor4
        mostStressed.text! += TempVariables.mostStressed
        alleviate.text! += TempVariables.alleviate
        
    }
    
    

}
