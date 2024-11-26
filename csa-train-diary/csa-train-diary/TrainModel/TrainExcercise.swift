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
class TrainExcercise: Identifiable  {
    var name: String
    var target: TrainExcerciseTarget
    init(name: String, target: TrainExcerciseTarget) {
        self.name = name
        self.target = target
    }

}

let defaultTrainExcercises: [TrainExcercise] = [
    TrainExcercise(name: "squat", target: "legs"),
    TrainExcercise(name: "pull up", target: "back"),
    TrainExcercise(name: "arm curl", target: "biceps"),
    TrainExcercise(name: "push up", target: "chest"),
    TrainExcercise(name: "hack squat", target: "legs"),
    ]
