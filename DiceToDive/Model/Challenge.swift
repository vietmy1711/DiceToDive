//
//  Challenge.swift
//  DiceToDive
//
//  Created by MM on 6/11/20.
//  Copyright © 2020 MM. All rights reserved.
//

import Foundation

struct Challenge {
    let title: String
    let description: String
    var objectives: [Objective] = []
    var progress: Float = 0
    
    init(title: String, description: String, objectives: [Objective]) {
        self.title = title
        self.description = description
        self.objectives = objectives
        var count = 0
        for objective in objectives {
            if objective.status == true {
                count += 1
            }
        }
        self.progress = Float(count)/Float(objectives.count)
    }
}
