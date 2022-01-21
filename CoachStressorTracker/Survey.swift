//
//  Survey.swift
//  CoachStressorTracker
//
//  Created by ELLA MADALINSKI on 1/12/22.
//

import Foundation

public class Statics: Codable {
    public static var surveyArray = [Survey]()
    public static var stressorArray = [String]()
    
}

public class Survey: Codable{
    var name: String
    var type: String
    var date : Date
    
    init(n: String, t: String, d: Date){
        name = n
        type = t
        date = d
    }
    
}
