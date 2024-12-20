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

struct TrainExcercise: Hashable  {
    
    var name: String
    var target: TrainExcerciseTarget
}

extension TrainExcercise: Identifiable {
    var id: String { name }
}

let defaultTrainExcercises: [TrainExcercise] = [
    TrainExcercise(name: "squat", target: "legs"),
    TrainExcercise(name: "pull up", target: "back"),
    TrainExcercise(name: "arm curl", target: "biceps"),
    TrainExcercise(name: "push up", target: "chest"),
    TrainExcercise(name: "hack squat", target: "legs"),
    ]
