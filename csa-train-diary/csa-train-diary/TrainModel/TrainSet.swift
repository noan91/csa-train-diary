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


struct TrainSet {
    var exercise: TrainExcercise
    var counter: TrainSetCounter
    var reps: Int
    var intencity: Double //интенсивность (вес). указывается если в упражнении это указано
}

extension TrainSet: Identifiable {
    public var id: UUID {
        UUID()
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
