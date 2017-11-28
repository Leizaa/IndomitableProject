//
//  Task.swift
//  IndomitableProject
//
//  Created by Metta Saridewi Wahab on 27/11/17.
//  Copyright © 2017 RagingWind. All rights reserved.
//

import Foundation

class Task{
    var name: String
    var notes: String
    var memberCount: Int
    var time: Time
    var points: Int
    var priority: Int
    
    init(name: String, memberCount: Int, time: Time) {
        self.name = name
        self.notes = ""
        self.memberCount = memberCount
        self.time = time
        self.points = 100 //calculation goes here
        self.priority = 1 // optional
    }
    
    
}
