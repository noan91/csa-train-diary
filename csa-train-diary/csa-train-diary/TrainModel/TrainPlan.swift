//
//  TrainPlan.swift
//  csa-train-diary
//
//  Created by Стас Чечура on 26.11.24.
//

import Foundation

typealias TrainDayPlan = [TrainSet]
typealias TrainWeekPlan = [Int: TrainDayPlan]
typealias TrainPlan = [TrainWeekPlan]
