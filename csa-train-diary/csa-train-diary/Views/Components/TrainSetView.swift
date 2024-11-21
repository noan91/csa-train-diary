//
//  SetView.swift
//  csa-train-diary
//
//  Created by Стас Чечура on 21.11.24.
//

import SwiftUI

struct TrainSetView: View {
    @State var trSet: TrainSet
    var body: some View {
        VStack(alignment: .leading) {
            Text(trSet.exercise.name)
            if trSet.intencity != nil {
                HStack{
                    StepPicker(label: "Intencity:", step:0.5, value:  trSet.intencity!)
                }
            }
            StepPicker(label:"Reps:", step: 1, value:  trSet.reps)
            
        }
    }
}


#Preview {
    let set1 = TrainSet(exercise: TrainExcercise(name: "pull up", target: "back"), counter: .reps, reps: 10, intencity: nil)
    let set2 = TrainSet(exercise: TrainExcercise(name: "push up", target: "chest"), counter: .reps, reps: 10, intencity: 40)
    TrainSetView(trSet: set2)
}
