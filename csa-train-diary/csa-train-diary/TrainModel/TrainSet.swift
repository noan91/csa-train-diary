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
    var intencity: Double? //интенсивность (вес). указывается если в упражнении это указано
    init(exercise: TrainExcercise, counter: TrainSetCounter, reps: Int, intencity: Double? = nil) {
        self.exercise = exercise
        self.counter = counter
        self.reps = reps
        self.intencity = intencity
    }

}
