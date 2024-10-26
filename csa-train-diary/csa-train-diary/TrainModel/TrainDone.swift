//
//  TrainDone.swift
//  csa-train-diary
//
//  Created by Стас Чечура on 26.10.24.
//
import Foundation
import SwiftData

class TrainDone {
    var doneSets: [TrainSet] = []
    init(doneSets: [TrainSet]) {
        self.doneSets = doneSets
    }
    init() {
        self.doneSets = []
    }
}
