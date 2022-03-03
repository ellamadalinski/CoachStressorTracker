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
            var colorNum = Statics.surveyArray[indexPath.row].afterMood
            if colorNum == 1 || colorNum == 2 || colorNum == 3 {
                cell.backgroundColor = UIColor(red: 1.0, green: 0.15, blue: 0.1, alpha: 0.6)
            }
            else if colorNum == 4 || colorNum == 5 || colorNum == 6 || colorNum == 7 {
                cell.backgroundColor = UIColor(red: 1.0, green: 1.0, blue: 0.4, alpha: 0.75)
            }
            else if colorNum == 8 || colorNum == 9 || colorNum == 10 {
                cell.backgroundColor = UIColor(red: 0.5, green: 1.0, blue: 0, alpha: 0.6)
            }
            else {
                cell.backgroundColor = UIColor.white
            }
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
            TempVariables.afterMood = Statics.surveyArray[indexPath.row].afterMood
            TempVariables.overall = Statics.surveyArray[indexPath.row].overall
            TempVariables.happy = Statics.surveyArray[indexPath.row].happy
            TempVariables.upset = Statics.surveyArray[indexPath.row].upset
            TempVariables.stressor1 = Statics.surveyArray[indexPath.row].stressor1
            TempVariables.stressor2 = Statics.surveyArray[indexPath.row].stressor2
            TempVariables.stressor3 = Statics.surveyArray[indexPath.row].stressor3
            TempVariables.stressor4 = Statics.surveyArray[indexPath.row].stressor4
            TempVariables.stressor5 = Statics.surveyArray[indexPath.row].stressor5
            TempVariables.mostStressed = Statics.surveyArray[indexPath.row].mostStressed
            TempVariables.alleviate = Statics.surveyArray[indexPath.row].alleviate
            
            performSegue(withIdentifier: "homeToResponse", sender: nil)
        }
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        if tableView == pastSurveysTableViewOutlet{
            let edit = UITableViewRowAction(style: .normal, title: "Edit") { (action, indexPath) in
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
                TempVariables.afterMood = Statics.surveyArray[indexPath.row].afterMood
                TempVariables.overall = Statics.surveyArray[indexPath.row].overall
                TempVariables.happy = Statics.surveyArray[indexPath.row].happy
                TempVariables.upset = Statics.surveyArray[indexPath.row].upset
                TempVariables.stressor1 = Statics.surveyArray[indexPath.row].stressor1
                TempVariables.stressor2 = Statics.surveyArray[indexPath.row].stressor2
                TempVariables.stressor3 = Statics.surveyArray[indexPath.row].stressor3
                TempVariables.stressor4 = Statics.surveyArray[indexPath.row].stressor4
                TempVariables.stressor5 = Statics.surveyArray[indexPath.row].stressor5
                TempVariables.mostStressed = Statics.surveyArray[indexPath.row].mostStressed
                TempVariables.alleviate = Statics.surveyArray[indexPath.row].alleviate
                
                self.tabBarController?.selectedIndex = 1
                
                Statics.surveyArray.remove(at: indexPath.row)
                tableView.reloadData()
                
            }
            let delete = UITableViewRowAction(style: .destructive, title: "Delete") { (action, indexPath) in
                Statics.surveyArray.remove(at: indexPath.row)
                tableView.reloadData()
            }
            return [delete, edit]
        }
        
        else{
            let delete = UITableViewRowAction(style: .destructive, title: "Delete") { (action, indexPath) in
                Statics.stressorArray.remove(at: indexPath.row)
                tableView.reloadData()
            }
            
            
            return [delete]
        }
        
    }
    
    @IBAction func unwind(_ seg : UIStoryboardSegue){
        print("unwinded")
    }

}

