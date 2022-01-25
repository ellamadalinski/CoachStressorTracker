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
    var date : Date
    var beforeMood : Int
    var expect: String
    var goal : String
    var afterMood : Int
    var overall: String
    var happy: String
    var upset: String
    var stressor1: String
    var stressor2: String
    var stressor3: String
    var stressor4: String
    var stressor5: String
    var mostStressed: String
    var alleviate: String
    
    init(n: String, d: Date, bm: Int, e: String, g: String, am: Int, o: String, h: String, u: String, s1: String, s2: String, s3: String, s4: String, s5: String, ms: String, a: String){
        name = n
        date = d
        beforeMood = bm
        expect = e
        goal = g
        afterMood = am
        overall = o
        happy = h
        upset = u
        stressor1 = s1
        stressor2 = s2
        stressor3 = s3
        stressor4 = s4
        stressor5 =  s5
        mostStressed = ms
        alleviate = a
    }
    
    public class TempVariables{
        
        static var name: String = ""
        static var date : Date = Date()
        static var beforeMood : Int = 0
        static var expect: String = ""
        static var goal : String = ""
        static var afterMood : Int = 0
        static var overall: String = ""
        static var happy: String = ""
        static var upset: String = ""
        static var stressor1: String = ""
        static var stressor2: String = ""
        static var stressor3: String = ""
        static var stressor4: String = ""
        static var stressor5: String = ""
        static var mostStressed: String = ""
        static var alleviate: String = ""
        
        
    }
    
}
