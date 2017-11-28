//
//  Event.swift
//  IndomitableProject
//
//  Created by Davin Reinaldo Gozali on 28/11/17.
//  Copyright © 2017 RagingWind. All rights reserved.
//

import Foundation

enum Types{
    case SprintPlanning
    case Sprint
    case DailyScrum
    case Review
    case Retrospective
}

class Event{
    var time: Time
    var type: Types
    
    init(time: Time, type: Types) {
        self.time = time
        self.type = type
    }
}
