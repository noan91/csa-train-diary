//
//  TrainDone.swift
//  csa-train-diary
//
//  Created by Стас Чечура on 26.10.24.
//
import Foundation
import SwiftData

@Model
class Train {
    var date: Date
    var sets: [TrainSet]
    init(date: Date, sets: [TrainSet]) {
        self.date = date
        self.sets = sets
    }
}


