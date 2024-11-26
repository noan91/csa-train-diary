//
//  TrainSet.swift
//  csa-train-diary
//
//  Created by Стас Чечура on 26.10.24.
//

import Foundation
import SwiftData

enum TrainSetCounter: Int, Codable {
    case reps = 0
    case time = 1
}

@Model
class TrainSet: Identifiable, Hashable {
    var exercise: TrainExcercise
    var counter: TrainSetCounter
    var reps: Int
    var intencity: Double //интенсивность (вес). указывается если в упражнении это указано
    init(exercise: TrainExcercise, counter: TrainSetCounter, reps: Int, intencity: Double) {
        self.exercise = exercise
        self.counter = counter
        self.reps = reps
        self.intencity = intencity
    }

}


let defaultTrainSets: [TrainSet] = [
    TrainSet(exercise: defaultTrainExcercises[0], counter: .reps, reps: 5, intencity: 100),
    TrainSet(exercise: defaultTrainExcercises[1], counter: .reps, reps: 10, intencity: 40),
    TrainSet(exercise: defaultTrainExcercises[0], counter: .reps, reps: 5, intencity: 100),
    TrainSet(exercise: defaultTrainExcercises[1], counter: .reps, reps: 10, intencity: 40),
    TrainSet(exercise: defaultTrainExcercises[2], counter: .reps, reps: 30, intencity: 20),
    TrainSet(exercise: defaultTrainExcercises[3], counter: .reps, reps: 5, intencity: 10),
    TrainSet(exercise: defaultTrainExcercises[2], counter: .reps, reps: 30, intencity: 20),
    TrainSet(exercise: defaultTrainExcercises[3], counter: .reps, reps: 5, intencity: 10),
    TrainSet(exercise: defaultTrainExcercises[0], counter: .reps, reps: 5, intencity: 100),
    TrainSet(exercise: defaultTrainExcercises[1], counter: .reps, reps: 10, intencity: 40),
    TrainSet(exercise: defaultTrainExcercises[0], counter: .reps, reps: 5, intencity: 100),
    TrainSet(exercise: defaultTrainExcercises[1], counter: .reps, reps: 10, intencity: 40),
    TrainSet(exercise: defaultTrainExcercises[2], counter: .reps, reps: 30, intencity: 20),
    TrainSet(exercise: defaultTrainExcercises[3], counter: .reps, reps: 5, intencity: 10),
    TrainSet(exercise: defaultTrainExcercises[2], counter: .reps, reps: 30, intencity: 20),
    TrainSet(exercise: defaultTrainExcercises[3], counter: .reps, reps: 5, intencity: 10),
    ]
