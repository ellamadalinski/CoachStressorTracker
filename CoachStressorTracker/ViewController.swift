//
//  ViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 1/10/22.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate , UITableViewDataSource{
    
    @IBOutlet weak var pastStressorsTableViewOutlet: UITableView!
    @IBOutlet weak var pastSurveysTableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pastStressorsTableViewOutlet.delegate = self
        pastStressorsTableViewOutlet.dataSource = self
        pastSurveysTableViewOutlet.delegate = self
        pastSurveysTableViewOutlet.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == pastStressorsTableViewOutlet{
            return 0
        }
        else if tableView == pastSurveysTableViewOutlet{
            return 0
        }
        else{
            return  0
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == pastStressorsTableViewOutlet{
            let cell = tableView.dequeueReusableCell(withIdentifier: "myStressorCell", for: indexPath)
            //populate the cell here
            return cell
        }
        else if tableView == pastSurveysTableViewOutlet{
            let cell = tableView.dequeueReusableCell(withIdentifier: "mySurveyCell", for: indexPath)
            //populate the cell here
            return cell
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //view the survey (NOT for stressors)
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if tableView == pastStressorsTableViewOutlet{
            if editingStyle == .delete {
                Statics.stressorArray.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
                tableView.reloadData()
            }
        }
        else if tableView == pastSurveysTableViewOutlet{
            if editingStyle == { //edit
                
            }
            
            if editingStyle == .delete {
                Statics.surveyArray.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
                tableView.reloadData()
            }
            
        }
        
        
                                              
        
    }
    

}

