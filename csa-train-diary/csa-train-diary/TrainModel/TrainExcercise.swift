//
//  TrainExcercise.swift
//  csa-train-diary
//
//  Created by Стас Чечура on 26.10.24.
//

import Foundation
import SwiftData

//целевая мышечная группа
enum ExcerciseTarget {
    case legs
    case back
    case chest
    case shoulders
    case biceps
    case triceps
}
//
class TrainExcercise {
    var name: String
    var target: ExcerciseTarget
    var weightOn: Bool
    init(name: String, target: ExcerciseTarget, weight: Bool) {
        self.name = name
        self.target = target
        self.weightOn = weight
    }
}
