//
//  TrainView.swift
//  csa-train-diary
//
//  Created by Стас Чечура on 21.11.24.
//

import SwiftUI

struct TrainView: View {
    @State var train: Train
    var body: some View {
        Text("TrainView")

        List {
            ForEach(train.sets.map(\.self)) {set  in
                TrainSetView(exercises: [], trSet: set)
            }
        }
        .toolbar {

            ToolbarItem {
                Button(action: addSet) {
                    Label("Add Item", systemImage: "plus")
                }
            }
        }
        .buttonStyle(BorderlessButtonStyle())
    }
    private func addSet() {

    }
}


#Preview {
    let s = TrainSet(exercise: TrainExcercise(name: "pull up", target: "back"), counter: .reps, reps: 2)
    let s1 = TrainSet(exercise: TrainExcercise(name: "push up", target: "chest"), counter: .reps, reps: 5, intencity: 40)
    TrainView(train: Train(date: Date(), sets: [s, s1, s, s1]))
}
