//
//  TrainExcercise.swift
//  csa-train-diary
//
//  Created by Стас Чечура on 26.10.24.
//

import Foundation
import SwiftData

//целевая мышечная группа
typealias TrainExcerciseTarget = String

let defaultTrainExcerciseTargets  = [
     "legs",
     "back",
     "chest",
     "shoulders",
     "biceps",
     "triceps",
     "core",
]

@Model
class TrainExcercise {
    var name: String
    var target: TrainExcerciseTarget
    init(name: String, target: TrainExcerciseTarget) {
        self.name = name
        self.target = target
    }
}
