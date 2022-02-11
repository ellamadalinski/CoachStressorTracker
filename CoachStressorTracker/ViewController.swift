//
//  ViewController.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 1/10/22.
//

import UIKit
import Foundation

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
    
    
    override func viewWillAppear(_ animated: Bool) {
        pastStressorsTableViewOutlet.reloadData()
        pastSurveysTableViewOutlet.reloadData()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == pastStressorsTableViewOutlet{
            return Statics.stressorArray.count
        }
        else{
            return Statics.surveyArray.count
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == pastStressorsTableViewOutlet{
            let cell = tableView.dequeueReusableCell(withIdentifier: "myStressorCell", for: indexPath)
            cell.textLabel?.text = Statics.stressorArray[indexPath.row].stressor
            
            let date = Statics.stressorArray[indexPath.row].date
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MM.dd.yyyy"
            let result = dateFormatter.string(from: date)
            
            cell.detailTextLabel?.text = result
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "mySurveyCell", for: indexPath)
            
            let date = Statics.surveyArray[indexPath.row].date
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MM.dd.yyyy"
            let result = dateFormatter.string(from: date)
            cell.textLabel?.text = result
            
            cell.detailTextLabel!.text = Statics.surveyArray[indexPath.row].name
            return cell
        }
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == pastSurveysTableViewOutlet{
            TempVariables.name = Statics.surveyArray[indexPath.row].name
            TempVariables.date = Statics.surveyArray[indexPath.row].date
            TempVariables.beforeMood = Statics.surveyArray[indexPath.row].beforeMood
            TempVariables.expect = Statics.surveyArray[indexPath.row].expect
            TempVariables.goal = Statics.surveyArray[indexPath.row].goal
            TempVariables.beginningMood = Statics.surveyArray[indexPath.row].beginningMood
            TempVariables.beginningStressor = Statics.surveyArray[indexPath.row].beginningStressor
            TempVariables.beginningGoal = Statics.surveyArray[indexPath.row].beginningGoal
            TempVariables.middleMood = Statics.surveyArray[indexPath.row].middleMood
            TempVariables.middleStressor = Statics.surveyArray[indexPath.row].middleStressor
            TempVariables.middleGoal = Statics.surveyArray[indexPath.row].middleGoal
            TempVariables.endMood = Statics.surveyArray[indexPath.row].endMood
            TempVariables.endStressor = Statics.surveyArray[indexPath.row].endStressor
            TempVariables.endGoal = Statics.surveyArray[indexPath.row].endGoal
            
            
            
            performSegue(withIdentifier: "homeToResponse", sender: nil)
        }
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        
//        if tableView == pastStressorsTableViewOutlet{
//            if editingStyle == .delete {
//                Statics.stressorArray.remove(at: indexPath.row)
//                tableView.deleteRows(at: [indexPath], with: .fade)
//                tableView.reloadData()
//            }
//        }
//        else if tableView == pastSurveysTableViewOutlet{
//
//            if editingStyle == .delete {
//                Statics.surveyArray.remove(at: indexPath.row)
//                tableView.deleteRows(at: [indexPath], with: .fade)
//                tableView.reloadData()
//            }
//
//        }
//
//
//    }
    
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        if tableView == pastSurveysTableViewOutlet{
            let edit = UITableViewRowAction(style: .normal, title: "Edit") { (action, indexPath) in
                
            }
            let delete = UITableViewRowAction(style: .destructive, title: "Delete") { (action, indexPath) in
                
            }
            
            return [delete, edit]
                
        }
        
        else{
            let delete = UITableViewRowAction(style: .destructive, title: "Delete") { (action, indexPath) in
                
            }
            
            
            return [delete]
        }
            
        
        
        
    }

}

