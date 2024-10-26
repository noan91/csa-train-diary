//
//  TrainSet.swift
//  csa-train-diary
//
//  Created by Стас Чечура on 26.10.24.
//

import Foundation
import SwiftData

enum TrainSetCounter: Int {
    case reps
    case time
}

class TrainSet {
    var exercise: TrainExcercise
    var counter: TrainSetCounter
    var value: Double
    var intencity: Double? //интенсивность (вес). указывается если в упражнении это указано
    init(exercise: TrainExcercise, counter: TrainSetCounter, value: Double, intencity: Double = -1) {
        self.exercise = exercise
        self.counter = counter
        self.value = value
        if self.exercise.weightOn && intencity > 0 {
          self.intencity = intencity
        } else {
            self.intencity = nil
        }
    }
}
