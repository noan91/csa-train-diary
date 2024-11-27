//
//  TrainPlan.swift
//  csa-train-diary
//
//  Created by Стас Чечура on 26.11.24.
//

import Foundation

enum DayOfWeek: Int {
    typealias RawValue = Int
    case monday = 1, tuesday, wednesday, thursday, friday, saturday, sunday
}
struct TrainDayPlan {
    var plan: [TrainSet]
    var desc: String
    var num: Int
}


struct TrainWeekPlan {
    var desc : String
    var num: Int
    var days: [DayOfWeek:TrainDayPlan]
}

struct TrainPlan {
    var name: String
    //weeks
    var weeks: [TrainWeekPlan]
}
